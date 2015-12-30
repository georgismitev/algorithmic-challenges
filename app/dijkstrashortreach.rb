require 'set'

module Math
  FIXNUM_MAX = (2**(0.size * 8 -2) -1)
  FIXNUM_MIN = -(2**(0.size * 8 -2))

  def self.max
    FIXNUM_MAX
  end

  def self.min
    FIXNUM_MIN
  end
end

class UndirectedGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = Hash.new do |hash, key|
      hash[key] = Hash.new { |hash, key| hash[key] = SortedSet.new }
    end
  end

  def add_edge(start_vertex, end_vertex, length)
    adjacency_list[start_vertex][end_vertex].add(length)
    adjacency_list[end_vertex][start_vertex].add(length)
  end

  def [](vertex)
    adjacency_list[vertex]
  end
end

def self.calculate_shortest_paths(graph, start_vertex)
  distances = {}
  parents = {}
  vertices = Set.new

  graph.adjacency_list.each_key do |k|
    distances[k] = Math.max
    parents[k] = nil
    vertices.add(k)
  end

  distances[start_vertex] = 0

  while !vertices.empty? do
    min_vertex = vertices.first
    vertices.each { |v| min_vertex = v if distances[v] < distances[min_vertex] }
    vertices.delete(min_vertex)
    
    graph[min_vertex].each_key do |edge|
      next unless vertices.include?(edge)
      if graph[min_vertex][edge].first + distances[min_vertex] < distances[edge]
        distances[edge] = graph[min_vertex][edge].first + distances[min_vertex]
        parents[edge] = min_vertex
      end
    end
  end

  distances
end

gets.to_i.times do
  graph = UndirectedGraph.new

  # read graph input
  n, m = gets.strip.split(' ').map(&:to_i)
  m.times { graph.add_edge(*(gets.strip.split(' ').map(&:to_i))) }
  start_vertex = gets.to_i

  distances = calculate_shortest_paths(graph, start_vertex)

  vals = Array.new(n - 1)
  j = 0
  
  n.times do |i|
    next if i + 1 == start_vertex

    if graph.adjacency_list[i + 1].empty? ||
      distances[i + 1].nil? ||
      distances[i + 1] == Math.max
      vals[j] = -1
    else
      vals[j] = distances[i + 1]
    end

    j += 1
  end

  puts vals.join(' ')
end
