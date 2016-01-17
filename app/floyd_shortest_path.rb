class FloydShortestPath
  attr_accessor :graph

  def initialize(graph)
    @graph = graph
    @matrix = graph.matrix
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
