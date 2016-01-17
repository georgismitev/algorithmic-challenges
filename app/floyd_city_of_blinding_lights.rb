module Math
  FIXNUM_MAX = (2 ** (0.size * 8 - 2) - 1)
  FIXNUM_MIN = -(2 ** (0.size * 8 - 2))

  def self.max
    FIXNUM_MAX
  end

  def self.min
    FIXNUM_MIN
  end
end

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
        j = i
        while j <= graph.size do
          if distance[i][k] + distance[k][j] < distance[i][j]
            self.distance[i][j] = distance[i][k] + distance[k][j]
          end
          j += 1
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

graph = FloydDirectedGraph.new
n, m = gets.strip.split.map(&:to_i)
m.times { graph.add_edge(*(gets.strip.split.map(&:to_i))) }
q = gets.to_i
floyd = FloydShortestPath.new(graph)
floyd.find_shortest_paths
cached_answers = {}
q.times do
  key = gets.strip.split.map(&:to_i)
  if cached_answers[key]
    puts cached_answers[key]
  else
    a = floyd.distance_between(*key)
    cached_answers[key] = a
    puts a
  end
end
