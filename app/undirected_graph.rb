class UndirectedGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = Hash.new { |hash, key| hash[key] = Set.new }
  end

  def add_edge(start_vertex, end_vertex)
    adjacency_list[start_vertex].add(end_vertex)
    adjacency_list[end_vertex].add(start_vertex)
  end

  def vertices
    adjacency_list.keys
  end

  def [](vertex)
    adjacency_list[vertex]
  end
end