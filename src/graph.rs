/*
    A simple directed graph implementation that is used by the different
    implementations of the state graph interface.

    Supports:
    - adding vertices with names of type V, labeled by type T
    - merging vertices in O(1) time (the two vertex names are now aliases)
      (requires a merge function T x T -> T)
    - iterating through the edges at a vertex (O(1) per edge)
*/

use super::debug_counter::DebugCounter;
use disjoint_sets::UnionFind;
use std::collections::{HashMap, LinkedList};
use std::hash::Hash;

// Newtypes to keep different types of ID straight
#[derive(Clone, Copy, Debug, Default, Eq, Hash, PartialEq)]
struct UniqueID(usize);
#[derive(Clone, Copy, Debug, Default, Eq, Hash, PartialEq)]
struct CanonicalID(usize);

#[derive(Debug)]
pub struct DiGraph<V, T> {
    vertex_ids: HashMap<V, UniqueID>,
    id_vertices: HashMap<UniqueID, V>,
    id_find: UnionFind<usize>,
    labels: HashMap<CanonicalID, T>,
    fwd_edges: HashMap<CanonicalID, LinkedList<UniqueID>>,
    bck_edges: HashMap<CanonicalID, LinkedList<UniqueID>>,
    default_label: T, // Used in get_label_or_default()
    // Debug mode statistics
    space: DebugCounter,
    time: DebugCounter,
}
impl<V, T: Default> Default for DiGraph<V, T> {
    // Can't derive automatically because we don't want to assume V: Default
    // (Basically: derive macro isn't smart enough)
    fn default() -> Self {
        Self {
            vertex_ids: Default::default(),
            id_vertices: Default::default(),
            id_find: Default::default(),
            labels: Default::default(),
            fwd_edges: Default::default(),
            bck_edges: Default::default(),
            default_label: Default::default(),
            space: Default::default(),
            time: Default::default(),
        }
    }
}
impl<V, T> DiGraph<V, T>
where
    V: Copy + Clone + Eq + Hash + PartialEq,
    T: Default + PartialEq,
{
    /*
        Exposed API
    */
    pub fn new() -> Self {
        Default::default()
    }
    pub fn is_seen(&self, v: V) -> bool {
        self.time.inc();
        self.vertex_ids.contains_key(&v)
    }
    pub fn get_label(&self, v: V) -> Option<&T> {
        self.time.inc();
        self.get_canon_id(v).and_then(|id| self.labels.get(&id))
    }
    pub fn get_label_or_default(&self, v: V) -> &T {
        self.get_label(v).unwrap_or(&self.default_label)
    }
    pub fn overwrite_vertex(&mut self, v: V, label: T) {
        // overwrites if already seen
        if self.is_seen(v) {
            let canon_id = self.get_canon_id_unwrapped(v);
            self.labels.insert(canon_id, label);
            self.time.inc();
        } else {
            self.add_vertex_core(v, label);
        }
    }
    pub fn ensure_vertex(&mut self, v: V) {
        // if not already seen, adds the default value
        if !self.is_seen(v) {
            self.add_vertex_core(v, Default::default());
        }
    }
    pub fn ensure_edge(&mut self, v1: V, v2: V) {
        // add an edge, ensuring the vertices exist first
        self.ensure_vertex(v1);
        self.ensure_vertex(v2);
        self.add_edge_core(v1, v2);
    }
    pub fn iter_vertices<'a>(&'a self) -> impl Iterator<Item = V> + 'a {
        // For merged vertices, includes only one copy
        self.labels
            .keys()
            .copied()
            .map(|CanonicalID(id)| UniqueID(id))
            .map(move |uid| self.id_vertices[&uid])
            .inspect(move |_| self.time.inc())
    }
    pub fn iter_vertices_all<'a>(&'a self) -> impl Iterator<Item = V> + 'a {
        // Includes every original vertex even when merged
        self.vertex_ids.keys().copied()
    }
    pub fn iter_fwd_edges<'a>(&'a self, v: V) -> impl Iterator<Item = V> + 'a {
        // Note that when vertices are merged, edges aren't. So the same vertex
        // could appear more than once in the iterator; but iter_edges enforces
        // that self-loops are filtered out.
        assert!(self.is_seen(v));
        self.iter_edges(v, &self.fwd_edges)
    }
    pub fn iter_bck_edges<'a>(&'a self, v: V) -> impl Iterator<Item = V> + 'a {
        // Note that when vertices are merged, edges aren't. So the same vertex
        // could appear more than once in the iterator; but iter_edges enforces
        // that self-loops are filtered out.
        assert!(self.is_seen(v));
        self.iter_edges(v, &self.bck_edges)
    }
    pub fn merge(&mut self, v1: V, v2: V) {
        // Panics if v1 or v2 aren't seen, or if their labels differ
        // Returns new canonical ID
        assert!(self.is_seen(v1));
        assert!(self.is_seen(v2));
        assert!(self.get_label(v1) == self.get_label(v2));
        self.time.inc();
        let canon1 = self.get_canon_id_unwrapped(v1);
        let canon2 = self.get_canon_id_unwrapped(v2);
        if canon1 != canon2 {
            self.id_find.union(canon1.0, canon2.0);
            let new = CanonicalID(self.id_find.find(canon1.0));
            debug_assert_eq!(new.0, self.id_find.find(canon2.0));
            debug_assert!(new == canon1 || new == canon2);
            let old = if new == canon1 { canon2 } else { canon1 };
            // Note the following are O(1)
            self.labels.remove(&old);
            let mut old_fwd = self.fwd_edges.remove(&old).unwrap();
            let mut old_bck = self.bck_edges.remove(&old).unwrap();
            self.fwd_edges.get_mut(&new).unwrap().append(&mut old_fwd);
            self.bck_edges.get_mut(&new).unwrap().append(&mut old_bck);
        }
        // Could return new vertex here; for now we return nothing.
    }

    /*
        Debug mode statistics
        These panic if not in debug mode.
    */
    // These panic if not in debug mode.
    pub fn get_space(&self) -> usize {
        self.space.get()
    }
    pub fn get_time(&self) -> usize {
        self.time.get()
    }

    /*
        Internal
    */
    fn add_vertex_core(&mut self, v: V, label: T) {
        // Panics if v is seen
        debug_assert!(!self.is_seen(v));
        let new_id = self.id_find.alloc();
        let unique_id = UniqueID(new_id);
        let canon_id = CanonicalID(new_id);
        debug_assert_eq!(self.id_find.find(new_id), new_id);
        debug_assert!(!self.vertex_ids.contains_key(&v));
        debug_assert!(!self.id_vertices.contains_key(&unique_id));
        debug_assert!(!self.labels.contains_key(&canon_id));
        debug_assert!(!self.fwd_edges.contains_key(&canon_id));
        debug_assert!(!self.bck_edges.contains_key(&canon_id));
        self.vertex_ids.insert(v, unique_id);
        self.id_vertices.insert(unique_id, v);
        self.labels.insert(canon_id, label);
        self.fwd_edges.insert(canon_id, LinkedList::new());
        self.bck_edges.insert(canon_id, LinkedList::new());
        self.time.inc();
        self.space.inc();
    }
    fn add_edge_core(&mut self, v1: V, v2: V) {
        // Panics if v1 or v2 is not seen
        assert!(self.is_seen(v1));
        assert!(self.is_seen(v2));
        let canon1 = self.get_canon_id_unwrapped(v1);
        let canon2 = self.get_canon_id_unwrapped(v2);
        if canon1 != canon2 {
            self.fwd_edges
                .get_mut(&canon1)
                .unwrap()
                .push_back(UniqueID(canon2.0));
            self.bck_edges
                .get_mut(&canon2)
                .unwrap()
                .push_back(UniqueID(canon1.0));
            self.space.inc();
        }
        self.time.inc();
    }
    fn get_canon_id(&self, v: V) -> Option<CanonicalID> {
        self.vertex_ids
            .get(&v)
            .map(|id| self.id_find.find(id.0))
            .map(CanonicalID)
    }
    fn get_canon_id_unwrapped(&self, v: V) -> CanonicalID {
        let id = self.vertex_ids.get(&v).unwrap();
        CanonicalID(self.id_find.find(id.0))
    }
    fn iter_edges<'a>(
        &'a self,
        v: V,
        edges: &'a HashMap<CanonicalID, LinkedList<UniqueID>>,
    ) -> impl Iterator<Item = V> + 'a {
        self.time.inc();
        let canon = self.get_canon_id_unwrapped(v);
        edges[&canon]
            .iter()
            .inspect(move |_| self.time.inc())
            .map(move |id| self.id_find.find(id.0))
            .filter(move |&id| id != canon.0)
            .map(move |id| self.id_vertices.get(&UniqueID(id)).unwrap())
            .copied()
    }
}
