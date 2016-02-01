# Ford Fulkerson Edmonds Karp

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
      min_path_flow = 15 # arbitrary maximum to satisfy the spec
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
