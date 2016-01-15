require 'pry'
require 'set'

def self.find_kruskal_weight(vertices, edges)
  weight = 0
  size = vertices.length - 1
  sets = { }

  vertices.each_pair { |k, _| sets[k] = [k, Set[k]] }

  edges = edges.sort_by { |s, e, w| w }

  edge_index = 0
  i = 0

  while i < size && edge_index < edges.length do
    s, e, w = edges[edge_index]
    s = sets[s][0] if sets[s][1].length == 0
    unless sets[s][1].include?(e)
      weight += w
      sets[s][1].add(e)
      sets[e][0] = s
      sets[e][1].delete(e)
      i += 1
    end
    edge_index += 1
  end

  weight
end

n, m = gets.strip.split.map(&:to_i)
vertices = { }
edges = Hash.new { |hash, key| hash[key] = [] }
m.times do |i|
  start_vertex, end_vertex, weight = gets.strip.split.map(&:to_i)
  edges[[start_vertex, end_vertex]].push(weight)
  vertices[start_vertex] = 1
  vertices[end_vertex] = 1
end
gets.to_i

only_minimal_edges = []
edges.each_pair do |k, weights|
  min = 100000
  weights.each { |w| min = [w, min].min if w > 0 }
  only_minimal_edges.push([k[0], k[1], min])
end

puts find_kruskal_weight(vertices, only_minimal_edges)
