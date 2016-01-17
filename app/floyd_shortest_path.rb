class FloydShortestPath
  attr_accessor :graph
  attr_accessor :distance

  def initialize(graph)
    @graph = graph
  end

  def find_shortest_paths
    self.distance = Array.new(graph.size + 1) { Array.new(graph.size + 1) { Math.max } }

    i = 1
    while i <= graph.size do
      j = 1
      while j <= graph.size do
        if graph[i][j]
          self.distance[i][j] = graph[i][j]
        elsif i == j
          self.distance[i][j] = 0
        end
        j += 1
      end
      i += 1
    end

    k = 1
    while k <= graph.size do
      i = 1
      while i <= graph.size do
        j = 1
        if distance[i][k] != Math.max
          while j <= graph.size do
            if distance[i][k] + distance[k][j] < distance[i][j]
              self.distance[i][j] = distance[i][k] + distance[k][j]
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
    d = self.distance[start_vertex][end_vertex]
    d == Math.max ? -1 : d
  end
end
