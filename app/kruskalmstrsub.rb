require 'set'

def self.find_kruskal_weight(vertices, edges)
  weight = 0
  size = vertices.length - 1
  sets = { }
  vertex_set = { }

  vertices.each_pair do |k, _|
    sets[k] = Set[k]
    vertex_set[k] = k
  end
  edges = edges.sort_by { |s, e, w| w }

  edge_index = 0
  i = 0

  while i < size && edge_index < edges.length do
    s, e, w = edges[edge_index]
    s = vertex_set[s]
    e = vertex_set[e]
    if !sets[s].include?(e)
      weight += w
      sets[e].each do |element|
        sets[s].add(element)
        vertex_set[element] = s
      end
      i += 1
    end
    edge_index += 1
  end

  weight
end

n, m = gets.strip.split.map(&:to_i)
vertices = { }
edges = Array.new(m)
m.times do |i|
  start_vertex, end_vertex, weight = gets.strip.split.map(&:to_i)
  edges[i] = [start_vertex, end_vertex, weight]
  vertices[start_vertex] = 1
  vertices[end_vertex] = 1
end
gets.to_i

puts find_kruskal_weight(vertices, edges)
