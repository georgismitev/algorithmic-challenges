class Edge
  attr_accessor :start_vertex, :end_vertex, :weight

  def initialize(start_vertex, end_vertex, weight)
    @start_vertex = start_vertex
    @end_vertex = end_vertex
    @weight = weight
  end

  def <=>(another_edge)
    self.weight <=> another_edge.weight
  end

  def <(another_edge)
    self.weight < another_edge.weight
  end
end
