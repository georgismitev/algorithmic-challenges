module Math
  FIXNUM_MAX = 10_000

  def self.max
    FIXNUM_MAX
  end
end

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

class FloydShortestPath
  attr_accessor :graph

  def initialize(graph)
    @graph = graph
  end

  def find_shortest_paths
    k = 1
    while k < graph.size do
      i = 1
      while i < graph.size do
        j = 1
        while j < graph.size do
          if graph.matrix[i][k] == Math.max || graph.matrix[k][j] == Math.max
            j += 1
            next
          else
            if graph.matrix[i][j] > graph.matrix[i][k] + graph.matrix[k][j]
              graph.matrix[i][j] = graph.matrix[i][k] + graph.matrix[k][j]
            end
            j += 1
          end
        end
        i += 1
      end
      k += 1
    end
  end

  def distance_between(start_vertex, end_vertex)
    d = graph.matrix[start_vertex][end_vertex]
    d == Math.max ? -1 : d
  end
end

n, m = gets.strip.split.map(&:to_i)
graph = FloydDirectedGraph.new(n)
m.times { graph.add_edge(*(gets.strip.split.map(&:to_i))) }
q = gets.to_i
floyd = FloydShortestPath.new(graph)
floyd.find_shortest_paths
q.times { puts floyd.distance_between(*(gets.strip.split.map(&:to_i))) }
