require 'set'

module Math
  FIXNUM_MAX = (2 ** (0.size * 8 - 2) - 1)

  def self.max
    FIXNUM_MAX
  end
end


class FordFulkersonEdge
  # total capacity
  attr_accessor :capacity
  # actual units moving throught that edge
  attr_accessor :flow
  attr_accessor :residual_capacity

  def initialize(capacity)
    @capacity = capacity
    @flow = 0
    @residual_capacity = [@capacity - @flow, 0].max
  end

  def add_flow(new_flow)
    @flow += new_flow
    @residual_capacity = [@capacity - @flow, 0].max
  end

  def add_residual_capacity(new_capacity)
    @residual_capacity += new_capacity
  end
end

class FordFulkersonGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = Hash.new { |hash, key| hash[key] = { } }
  end

  def add_edge(start_vertex, end_vertex, capacity)
    @adjacency_list[start_vertex][end_vertex] = FordFulkersonEdge.new(capacity)

    unless @adjacency_list[end_vertex].key?(start_vertex)
      @adjacency_list[end_vertex][start_vertex] = FordFulkersonEdge.new(0)
    end
  end

  def [](vertex)
    @adjacency_list[vertex]
  end
end

class MaxFlow
  attr_accessor :graph

  def initialize(graph)
    @graph = graph
  end

  def find_max_flow(source, consumer)
    max_flow = 0

    while augmented_path = next_augmented_path(source, consumer) do
      i = 0
      path_capacity = Array.new(augmented_path.length - 1)
      min_path_flow = Math.max
      while i < augmented_path.length - 1 do
        l = augmented_path[i]
        r = augmented_path[i + 1]
        path_capacity[i] = @graph[l][r].capacity
        min_path_flow = [min_path_flow, path_capacity[i]].min
        i += 1
      end

      i = 0
      while i < augmented_path.length - 1 do
        l = augmented_path[i]
        r = augmented_path[i + 1]
        @graph[l][r].add_flow(min_path_flow)
        @graph[r][l].add_residual_capacity(min_path_flow)
        i += 1
      end

      max_flow += min_path_flow
    end

    max_flow
  end

  def next_augmented_path(source, consumer)
    queue = [source]
    visited = { }
    queue_start = 0
    visited[source] = 1
    parents = { }
    augmented_path_found = false

    while queue_start < queue.length do
      available_edges = @graph[queue[queue_start]].select do |vertex, edge|
        !visited[vertex] && edge.residual_capacity > 0
      end

      available_edges.each do |end_vertex, edge|
        queue.push(end_vertex)
        visited[end_vertex] = 1
        parents[end_vertex] = queue[queue_start]
      end

      if available_edges[consumer]
        augmented_path_found = true
        break
      end

      queue_start += 1
    end

    if augmented_path_found
      path = []
      current_vertex = consumer
      while current_vertex != nil do
        path.push(current_vertex)
        current_vertex = parents[current_vertex]
      end

      reversed_path = []
      i = 0
      while i < path.length do
        reversed_path[i] = path[path.length - i - 1]
        i += 1
      end

      reversed_path
    end
  end
end

gets.to_i.times do
  n, t, m = gets.strip.split.map(&:to_i)

  graph = Hash.new { |h, k| h[k] = {} }
  ford_fulkerson_graph = FordFulkersonGraph.new
  source = 1
  consumer = 2 * n + 2
  head_set = Set.new
  feet_set = Set.new
  existing_edges = { }

  m.times do
    s, e = gets.strip.split.map(&:to_i)
    graph[s][e] = 1
    graph[e][s] = 1
  end

  graph.each_pair do |s, edges|
    edges.each_pair do |e, _|
      head_set.add(2 * s)
      feet_set.add(2 * s + 1)
      next if existing_edges[[s, e]] || existing_edges[[e, s]]
      existing_edges[[s, e]] = 1
      ford_fulkerson_graph.add_edge(2 * s, 2 * e + 1, 1)
      ford_fulkerson_graph.add_edge(2 * e, 2 * s + 1, 1)
    end
  end

  head_set.each do |k|
    weight = [ford_fulkerson_graph[k].length, t].min
    ford_fulkerson_graph.add_edge(source, k, weight)
  end

  feet_set.each { |k| ford_fulkerson_graph.add_edge(k, consumer, 1) }

  puts MaxFlow.new(ford_fulkerson_graph).find_max_flow(source, consumer)
end
