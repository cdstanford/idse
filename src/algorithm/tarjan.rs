/*
    Implementation of the StateGraph trait using Tarjan's
    algorithm for online strongly-connected-components (the state of the art
    in terms of computational complexity).

    The algorithm we implement is described in section 4.1 of this paper:
        Bender, M. A., Fineman, J. T., Gilbert, S., & Tarjan, R. E. (2015).
        A new approach to incremental cycle detection and related problems.
        CM Transactions on Algorithms (TALG), 12(2), 1-22.

    As with all the implementations, we rely as much as possible on the core
    graph functionality in graph::DiGraph.
    However, there is still a fair amount of code duplication between here and
    simple.rs, which could be improved.
*/

use crate::graph::DiGraph;
use crate::interface::{StateGraph, Status};
use std::collections::{HashMap, HashSet};
use std::iter;

// The key to the algorithm: pseudo-topological numbering
#[derive(Clone, Copy, Debug, Eq, Ord, PartialEq, PartialOrd)]
struct Level(usize);
impl Default for Level {
    fn default() -> Self {
        Level(0)
    }
}

#[derive(Debug, Default)]
pub struct TarjanStateGraph {
    graph: DiGraph<usize, (Status, Level)>,
    // edges from open states, not yet added to the graph
    pending_edges: HashMap<usize, Vec<usize>>,
    // count of graph edges
    edge_counter: usize,
}
impl TarjanStateGraph {
    /* The core parameter for the algorithm: delta = sqrt(num edges) */
    fn delta(&self) -> usize {
        (self.edge_counter as f64).sqrt() as usize
    }

    /* Vertex label getters / setters */
    fn set_status(&mut self, v: usize, status: Status) {
        debug_assert!(self.is_seen(v));
        self.graph.get_label_mut(v).unwrap().0 = status;
    }
    fn get_level(&self, v: usize) -> Level {
        debug_assert!(self.is_seen(v));
        self.graph.get_label(v).unwrap().1
    }
    fn set_level(&mut self, v: usize, level: Level) {
        debug_assert!(self.is_seen(v));
        self.graph.get_label_mut(v).unwrap().1 = level;
    }

    fn update_levels_iterative(&mut self, v1: usize, v2: usize) {
        // Update levels after adding an edge (v1, v2),
        // AND ensure acyclic by merging cycles.
        // This is the main algorithm, as described in the Tarjan paper.
        // Some differences:
        // - I am using a DFS instead of a BFS. Will that change the complexity?
        // - I am not using the separate "in" edges for now, just iterating over
        //   back edges and filtering out those not at the same level.
        // - I am not doing the "cleaning" procedure to remove duplicate edges,
        //   either. This could be added later to graph.rs. This means that
        //   instead of stopping after Delta unique vertices, I might be
        //   stopping earlier after Delta edges.

        debug_assert_eq!(self.get_status(v1), Some(Status::Unknown));
        debug_assert!(
            self.is_closed(v2) || self.graph.iter_fwd_edges(v2).count() == 0
        );

        // ===== STEP 1: Test Order =====
        let level1 = self.get_level(v1);
        let level2 = self.get_level(v2);
        if self.graph.is_same_vertex(v1, v2) || level1 < level2 {
            return;
        }

        // ===== STEP 2: Search Backward =====
        let mut found_cycle = false;
        let mut count = 0;
        let mut set_bck = HashSet::new();
        set_bck.insert(v1);
        for u in self
            .graph
            .dfs_bck(iter::once(v1), |u| {
                debug_assert!(self.get_level(u) <= level1);
                self.get_level(u) == level1
            })
            .take(self.delta())
        {
            if self.graph.is_same_vertex(u, v2) {
                found_cycle = true;
            }
            set_bck.insert(u);
            count += 1;
        }
        let count = count;
        let set_bck = set_bck;
        debug_assert!(count <= self.delta());
        debug_assert_eq!(count + 1, set_bck.len());

        // ===== STEP 3: Search Forward =====
        if count == self.delta() || level2 < level1 {
            // search didn't complete OR level(v2) is too low
            let new_level = {
                if count == self.delta() {
                    Level(level1.0 + 1)
                } else {
                    level1
                }
            };

            self.set_level(v2, new_level);
            let level_to_increase: Vec<usize> = self
                .graph
                .dfs_fwd(iter::once(v2), |w| {
                    debug_assert!(self.get_level(w) >= level2);
                    set_bck.contains(&w) || self.get_level(w) < new_level
                })
                .collect();

            for &w in &level_to_increase {
                if set_bck.contains(&w) {
                    found_cycle = true;
                }
                self.set_level(w, new_level);
            }

            debug_assert_eq!(self.get_level(v2), new_level);
        }
        debug_assert!(level2 <= level1);
        debug_assert!(level1 <= self.get_level(v1));
        debug_assert!(self.get_level(v1) <= self.get_level(v2));
        debug_assert!(self.get_level(v2) <= Level(level1.0 + 1));
        let level1 = self.get_level(v1);
        let level2 = self.get_level(v2);

        // ===== STEP 4: Form Component =====
        if found_cycle {
            debug_assert_eq!(level1, level2);
            debug_assert!(v1 != v2);
            // This part is roughly the same as merge_all_cycles in simple.rs
            let v1 = self.graph.get_canon_vertex(v1);
            let v2 = self.graph.get_canon_vertex(v2);
            let fwd_reachable: HashSet<usize> = self
                .graph
                .dfs_fwd(iter::once(v2), |w| {
                    debug_assert!(self.get_level(w) >= level1);
                    self.get_level(w) == level1
                })
                .chain(iter::once(v2))
                .collect();
            debug_assert!(fwd_reachable.contains(&(v1)));
            debug_assert!(fwd_reachable.contains(&(v2)));
            let bi_reachable: HashSet<usize> = self
                .graph
                .dfs_bck(iter::once(v1), |u| fwd_reachable.contains(&u))
                .chain(iter::once(v1))
                .collect();
            debug_assert!(bi_reachable.contains(&(v1)));
            debug_assert!(bi_reachable.contains(&(v2)));
            for &u in &bi_reachable {
                debug_assert_eq!(self.get_status(v1), Some(Status::Unknown));
                if u != v1 {
                    self.graph.merge(u, v1);
                }
            }
        }

        // ===== DONE =====
    }
    fn check_dead_iterative(&mut self, v: usize) {
        // This is the same procedure as in Simple
        let now_dead: HashSet<usize> = self
            .graph
            .topo_search_bck(
                iter::once(v),
                |u| self.is_closed(u),
                |w| !self.is_dead(w),
            )
            .collect();
        debug_assert!(
            now_dead.is_empty()
                || now_dead.contains(&self.graph.get_canon_vertex(v))
        );
        for &u in now_dead.iter() {
            self.set_status(u, Status::Dead);
        }
    }
}
impl StateGraph for TarjanStateGraph {
    fn new() -> Self {
        Default::default()
    }
    fn add_transition_unchecked(&mut self, v1: usize, v2: usize) {
        self.graph.ensure_vertex(v1);
        self.graph.ensure_vertex(v2);
        debug_assert_eq!(self.get_status(v1), Some(Status::Open));
        self.pending_edges.entry(v1).or_default().push(v2);
    }
    fn mark_closed_unchecked(&mut self, v: usize) {
        self.graph.ensure_vertex(v);
        self.set_status(v, Status::Unknown);
        for w in self.pending_edges.remove(&v).unwrap_or_default().drain(..) {
            self.edge_counter += 1;
            debug_assert!(self.is_seen(w));
            self.graph.ensure_edge(v, w);
            self.update_levels_iterative(v, w);
            debug_assert_eq!(self.get_status(v), Some(Status::Unknown));
        }
        debug_assert!(!self.pending_edges.contains_key(&v));
        self.check_dead_iterative(v);
    }
    fn get_status(&self, v: usize) -> Option<Status> {
        self.graph.get_label(v).map(|l| l.0)
    }
    fn vec_states(&self) -> Vec<usize> {
        self.graph.iter_vertices_all().collect()
    }
    fn get_space(&self) -> usize {
        self.graph.get_space()
    }
    fn get_time(&self) -> usize {
        self.graph.get_time()
    }
}
