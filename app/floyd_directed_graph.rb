class FloydDirectedGraph
  attr_accessor :matrix, :size

  def initialize(vertices)
    size = vertices + 1
    @size = size
    @matrix = Array.new(size) do |i|
      Array.new(size) do |j|
        i == j ? 0 : Math.max
      end
    end
  end

  def add_edge(start_vertex, end_vertex, weight)
    @matrix[start_vertex][end_vertex] = weight
  end
end
