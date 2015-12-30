require 'set'

class UndirectedGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = Hash.new { |hash, key| hash[key] = Set.new }
  end

  def add_edge(start_vertex, end_vertex)
    adjacency_list[start_vertex].add(end_vertex)
    adjacency_list[end_vertex].add(start_vertex)
  end

  def [](vertex)
    adjacency_list[vertex]
  end
end

def self.calculate_shortest_paths(graph, start_vertex)
  queue = [[start_vertex, 1]]
  paths = {}
  visited = {}

  while !queue.empty? do
    node, level = queue.shift
    next if visited.key?(node)
    visited[node] = 1
    graph[node].each do |edge|
      if !visited.key?(edge)
        paths[edge] = level * 6 unless paths.key?(edge)
        queue.push([edge, level + 1]) unless graph[edge].empty?
      end
    end
  end

  paths
end

gets.to_i.times do
  graph = UndirectedGraph.new

  # read graph input
  n, m = gets.strip.split(' ').map(&:to_i)
  m.times { graph.add_edge(*(gets.strip.split(' ').map(&:to_i))) }
  start_vertex = gets.to_i

  paths = calculate_shortest_paths(graph, start_vertex)

  vals = Array.new(n - 1)
  j = 0
  n.times do |i|
    next if i + 1 == start_vertex

    if graph.adjacency_list[i + 1].nil? || paths[i + 1].nil?
      vals[j] = -1
    else
      vals[j] = paths[i + 1]
    end

    j += 1
  end

  puts vals.join(' ')
end
