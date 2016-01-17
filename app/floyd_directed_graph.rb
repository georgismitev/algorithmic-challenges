class FloydDirectedGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = { }
  end

  def add_edge(start_vertex, end_vertex, weight)
    adjacency_list[start_vertex] = { } unless adjacency_list[start_vertex]
    adjacency_list[end_vertex] = { } unless adjacency_list[end_vertex]
    adjacency_list[start_vertex][end_vertex] = weight
  end

  def edge_weight(start_vertex, end_vertex)
    adjacency_list[start_vertex][end_vertex]
  end

  def [](vertex)
    adjacency_list[vertex]
  end

  def size
    @size ||= adjacency_list.keys.length
  end
end
