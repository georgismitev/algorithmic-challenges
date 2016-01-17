require 'set'

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

class MinHeap
  attr_accessor :array

  def initialize
    @array = []
  end

  # childrens of i: 2 * i + 1 and 2 * i + 2 
  # parent of i: (i - 1) / 2 ( (i - 1) >> 1 )

  def insert(value)
    array.push(value)
    i = array.length - 1
    parent = (i - 1) >> 1
    while i >= 0 && parent >= 0 && array[i] < array[parent] do
      array[i], array[parent] = array[parent], array[i]
      i = parent
      parent = (i - 1) >> 1
    end
  end

  def min
    self.array[0]
  end

  def extract
    last = array.length - 1
    array[0], array[last] = array[last], array[0]
    top = array.pop
    size = array.length

    i = 0
    while true do
      l = 2 * i + 1
      r = 2 * i + 2
      
      break if l >= size || r >= size || (
        (array[l] && array[i] < array[l]) &&
        (array[r] && array[i] < array[r])
      )

      if !array[r] || (array[r] && array[l] && array[l] < array[r])
        array[l], array[i] = array[i], array[l]
        i = l
      else
        array[r], array[i] = array[i], array[r]
        i = r
      end
    end

    top
  end
end

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

def self.find_prim_weight(graph, start_vertex)
  weight = 0

  visited = { }
  visited_edges = { }

  visited[start_vertex] = 1

  edges = MinHeap.new
  graph[start_vertex].keys.each do |end_vertex|
    edges.insert(
      Edge.new(
        start_vertex,
        end_vertex,
        graph.edge_weight(start_vertex, end_vertex)
      )
    )
    visited_edges[[start_vertex, end_vertex]] = 1
  end

  (graph.size - 1).times do
    min_edge = edges.extract
    while visited[min_edge.start_vertex] && visited[min_edge.end_vertex] do
      min_edge = edges.extract
    end
    weight += min_edge.weight
    visited[min_edge.end_vertex] = 1

    graph[min_edge.end_vertex].each_pair do |end_vertex, edge_weight|
      if !visited[end_vertex] &&
        !visited_edges[[min_edge.end_vertex, end_vertex]]
        edges.insert(
          Edge.new(
            min_edge.end_vertex,
            end_vertex,
            edge_weight
          )
        )
        visited_edges[[min_edge.end_vertex, end_vertex]] = 1
      end
    end
  end

  weight
end

graph = PrimUndirectedGraph.new
n, m = gets.strip.split.map(&:to_i)
m.times { graph.add_edge(*(gets.strip.split.map(&:to_i))) }
start_vertex = gets.to_i
puts find_prim_weight(graph, start_vertex)
