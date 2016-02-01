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
