class PrimUndirectedGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = Hash.new do |h1, k1|
      h1[k1] = Hash.new { |h, k| h[k] = Math.max }
    end
  end

  def add_edge(start_vertex, end_vertex, weight)
    new_weight = [
      adjacency_list[start_vertex][end_vertex],
      weight
    ].min
    adjacency_list[start_vertex][end_vertex] = new_weight
    adjacency_list[end_vertex][start_vertex] = new_weight
  end

  def edge_weight(start_vertex, end_vertex)
    adjacency_list[start_vertex][end_vertex]
  end

  def [](vertex)
    adjacency_list[vertex]
  end

  def size
    adjacency_list.keys.length
  end
end
