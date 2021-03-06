/*
    Our new implementation of the StateGraph trait.
    Uses "jump" pointers to jump from each state a large number
    of states ahead at once.
*/

use crate::debug_counter::DebugCounter;
use crate::graph::DiGraph;
use crate::interface::{StateGraph, Status};
use std::collections::{HashSet, LinkedList};
use std::iter;

// Maximum amount of work when merging not-reachable sets
const NOT_REACHABLE_MAX: usize = 10;

#[derive(Debug, Default, PartialEq)]
struct Node {
    // Jump list: nonempty for closed vertices.
    // First is a real edge, and the ith is approximately 2^i edges forward.
    jumps: Vec<usize>,

    // Reserve list: forward edges not added to graph.
    reserve: LinkedList<usize>,

    // Not reachable set: nodes known to be not reachable from this node
    not_reachable: HashSet<usize>,

    // Categorized status, same as in other algorithms
    status: Status,
}
fn merge_nodes(mut n1: Node, mut n2: Node) -> Node {
    // Note: result will be Status::Open!
    let mut result: Node = Default::default();
    debug_assert!(n1.status == Status::Unknown || n1.status == Status::Open);
    debug_assert!(n2.status == Status::Unknown || n2.status == Status::Open);
    debug_assert_eq!(result.status, Status::Open);
    result.reserve.append(&mut n1.reserve);
    result.reserve.append(&mut n2.reserve);
    // Partially merge not_reachable sets
    let (set1, set2) = (n1.not_reachable, n2.not_reachable);
    let (set1, set2) =
        if set1.len() < set2.len() { (set2, set1) } else { (set1, set2) };
    result.not_reachable = set1;
    for &v in set2.iter().take(NOT_REACHABLE_MAX) {
        // Note: elements in set1 and set2 are not updated to the
        // canonical vertex; so, when querying the set,
        // it is better to query original vertex names rather than
        // trying to call get_canon_vertex first
        println!("Copying not reachable: {}", v);
        result.not_reachable.insert(v);
    }
    result
}

#[derive(Debug, Default)]
pub struct JumpStateGraph {
    graph: DiGraph<usize, Node>,
    additional_time: DebugCounter,
}
impl JumpStateGraph {
    /* Node label manipulation */
    fn get_node(&self, v: usize) -> &Node {
        debug_assert!(self.is_seen(v));
        self.graph.get_label(v).unwrap()
    }
    fn get_node_mut(&mut self, v: usize) -> &mut Node {
        debug_assert!(self.is_seen(v));
        self.graph.get_label_mut(v).unwrap()
    }
    // Status getters / setters
    fn set_status(&mut self, v: usize, status: Status) {
        // println!("  Set status: {} {:?}", v, status);
        debug_assert!(self.is_seen(v));
        self.get_node_mut(v).status = status;
        // Mark live in particular deletes jumps and reserve edges.
        if status == Status::Live {
            self.get_node_mut(v).jumps.clear();
            self.get_node_mut(v).reserve.clear();
        }
    }
    // Reserve edges getters / setters
    fn push_reserve(&mut self, v: usize, w: usize) {
        debug_assert!(self.is_seen(v));
        debug_assert!(!self.is_closed(v));
        self.get_node_mut(v).reserve.push_back(w);
    }
    fn pop_reserve(&mut self, v: usize) -> Option<usize> {
        debug_assert!(self.is_seen(v));
        debug_assert!(!self.is_closed(v));
        self.get_node_mut(v).reserve.pop_back()
    }
    // Jump list getters / setters
    fn get_nth_jump(&self, v: usize, n: usize) -> usize {
        debug_assert!(self.is_closed(v));
        debug_assert!(self.get_node(v).jumps.len() > n);
        self.get_node(v).jumps[n]
    }
    fn get_first_jump(&self, v: usize) -> usize {
        // println!("get_first_jump: {} {}", v, self.is_closed(v));
        debug_assert!(self.is_closed(v));
        debug_assert!(!self.get_node(v).jumps.is_empty());
        self.get_nth_jump(v, 0)
    }
    fn get_last_jump(&self, v: usize) -> usize {
        // Get the current last element in the jumps list.
        debug_assert!(self.is_closed(v));
        debug_assert!(!self.get_node(v).jumps.is_empty());
        *self.get_node(v).jumps.last().unwrap()
    }
    fn get_num_jumps(&self, v: usize) -> usize {
        // Get the length of the jumps list
        // (open vertices implicitly have no jumps)
        if self.is_closed(v) {
            debug_assert!(!self.get_node(v).jumps.is_empty());
            self.get_node(v).jumps.len()
        } else {
            0
        }
    }
    fn pop_last_jump(&mut self, v: usize) {
        // Remove the current last element in the jumps list.
        // println!("  Popping last jump: {}", v);
        debug_assert!(self.is_closed(v));
        debug_assert!(!self.get_node(v).jumps.is_empty());
        self.get_node_mut(v).jumps.pop();
    }
    fn clear_jumps(&mut self, v: usize) {
        // println!("  Clearing jumps: {}", v);
        debug_assert!(self.is_closed(v));
        debug_assert!(!self.get_node(v).jumps.is_empty());
        self.get_node_mut(v).jumps.clear();
    }
    fn push_last_jump(&mut self, v: usize, w: usize) {
        // Add a last element to the jumps list.
        // println!("  Pushing jump: {}, {}", v, w);
        debug_assert!(self.is_closed(v));
        self.get_node_mut(v).jumps.push(w);
    }
    // Not reachable getters and setters
    fn is_not_reachable(&self, v: usize, w: usize) -> bool {
        // println!("Check not reachable: {} {}", v, w);
        self.get_node(v).not_reachable.contains(&w)
    }
    fn add_not_reachable(&mut self, v: usize, w: usize) {
        // println!("Adding not reachable: {} {}", v, w);
        self.get_node_mut(v).not_reachable.insert(w);
    }

    /*
        Main subroutine function: is-root

        Check if the univisted vertex root corresponding to v (unique open
        vertex reachable from v via forward-edges) equals end.

        This is the function that both uses/updates the jump list, and the
        function that uses the not-reachable list.

        Uses the jump list to get there more quickly than just one edge at a
        time. The assumed invariant is that although some jumps
        may be obsolete, there is always an open vertex that
        is pointed to once obsolete jumps are removed.

        Also shortcuts using the NotReachable sets if it can determine
        early that w is not reachable from v.
    */
    fn is_root(&mut self, v: usize, end: usize) -> bool {
        debug_assert!(self.is_unknown(v) || self.is_open(v));
        debug_assert!(self.is_open(end));
        if self.is_open(v) {
            self.graph.is_same_vertex(v, end)
        } else if self.is_not_reachable(v, end) {
            false
        } else {
            // Pop dead jumps
            while self.is_dead(self.get_last_jump(v)) {
                self.pop_last_jump(v);
            }
            // Get result and update jumps list
            let w = self.get_last_jump(v);
            let result = self.is_root(w, end);
            if self.get_num_jumps(v) <= self.get_num_jumps(w) {
                let new_jump = self.get_nth_jump(w, self.get_num_jumps(v) - 1);
                self.push_last_jump(v, new_jump);
            }
            result
        }
    }

    /*
        Merge the path from vertex v to the Open vertex it currently points
        to.
    */
    fn merge_path_from(&mut self, v: usize) {
        let to_merge: Vec<usize> = {
            iter::successors(Some(v), |&w| {
                // println!("{} {:?} {}", w, self.get_status(w));
                if self.is_closed(w) {
                    Some(self.get_first_jump(w))
                } else {
                    None
                }
            })
            .collect()
        };
        for &w in &to_merge {
            // println!("  Merging: {}, {}", v, w);
            self.graph.merge_using(v, w, merge_nodes);
        }
    }

    /*
        Initialize function for a newly closed vertex, to find an univisted
        vertex.
    */
    fn initialize_jumps(&mut self, v: usize) {
        // println!("Initializing jumps from: {}", v);
        while let Some(w) = self.pop_reserve(v) {
            if self.is_dead(w) {
                // println!("  (dead)");
                continue;
            } else if self.is_root(w, v) {
                // Merge cycle and continue
                // println!("  (merging {} -> {} -> ... -> {})", v, w, w_end);
                self.merge_path_from(w);
            } else {
                // No further work, set jump and return
                // println!("  (setting jump and returning)");
                debug_assert!(self.get_node(v).jumps.is_empty());
                self.set_status(v, Status::Unknown);
                self.graph.ensure_edge_fwd(v, w);
                self.push_last_jump(v, w);
                return;
            }
        }
        // No more edges -- v is dead.
        // Recurse on all edges backwards from v.
        self.set_status(v, Status::Dead);
        // println!("Found Dead: {}", v);
        let to_recurse: HashSet<usize> = self
            .graph
            .iter_bck_edges(v)
            .filter(|&u| self.is_unknown(u))
            .filter(|&u| self.graph.is_same_vertex(self.get_first_jump(u), v))
            .collect();
        // First set to_recurse as open so that recursive calls won't mess
        // with them
        for &u in &to_recurse {
            // println!("  Recursing on: {}", u);
            self.clear_jumps(u);
            self.set_status(u, Status::Open);
        }
        // Then go through and initialize jumps for each one
        for &u in &to_recurse {
            // println!("  Recursing on: {}", u);
            self.initialize_jumps(u);
        }
    }

    /*
        Calculate new live states
    */
    fn calculate_new_live_states(&mut self, v: usize) {
        // Same fn as in Naive
        if self.is_live(v) {
            let new_live: HashSet<usize> = self
                .graph
                .dfs_bck(iter::once(v), |u| {
                    debug_assert!(!self.is_dead(u));
                    !self.is_live(u)
                })
                .collect();
            for &u in new_live.iter() {
                self.set_status(u, Status::Live);
            }
        }
    }
}
impl StateGraph for JumpStateGraph {
    fn new() -> Self {
        Default::default()
    }
    fn add_transition_unchecked(&mut self, v1: usize, v2: usize) {
        // println!("# Adding transition: {}, {}", v1, v2);
        self.graph.ensure_edge_bck(v1, v2);
        self.calculate_new_live_states(v2);
        if !self.is_live(v1) {
            self.push_reserve(v1, v2);
        }
    }
    fn mark_closed_unchecked(&mut self, v: usize) {
        // println!("# Marking Closed: {}", v);
        self.graph.ensure_vertex(v);
        self.initialize_jumps(v);
    }
    fn mark_live_unchecked(&mut self, v: usize) {
        self.graph.ensure_vertex(v);
        self.set_status(v, Status::Live);
        self.calculate_new_live_states(v);
    }
    fn not_reachable_unchecked(&mut self, v1: usize, v2: usize) {
        self.graph.ensure_vertex(v1);
        // Could do self.graph.ensure_vertex(v2), but not necessary
        self.add_not_reachable(v1, v2);
    }
    fn get_status(&self, v: usize) -> Option<Status> {
        self.graph.get_label(v).map(|l| l.status)
    }
    fn get_space(&self) -> usize {
        self.graph.get_space()
    }
    fn get_time(&self) -> usize {
        self.graph.get_time()
    }
}
