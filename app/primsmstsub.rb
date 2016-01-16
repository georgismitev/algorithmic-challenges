require 'pry'
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
end

def self.find_prim_weight(vertices, start_vertex)
  weight = 0

  visited = { }
  visited[start_vertex] = 1

  pending_edges = SortedSet.new
  vertices[start_vertex].keys.each do |end_vertex|
    pending_edges.add(
      Edge.new(
        start_vertex,
        end_vertex,
        vertices[start_vertex][end_vertex]
      )
    )
  end

  (vertices.keys.length - 1).times do
    newly_added_vertex = nil

    pending_edges.each do |edge|
      if visited[edge.end_vertex]
        next
      else
        weight += edge.weight
        visited[edge.end_vertex] = 1
        newly_added_vertex = edge.end_vertex
        break
      end
    end

    vertices[newly_added_vertex].each_pair do |end_vertex, edge_weight|
      unless visited[end_vertex]
        pending_edges.add(
          Edge.new(
            start_vertex,
            end_vertex,
            edge_weight
          )
        )
      end
    end
  end

  weight
end

vertices = Hash.new do |h1, k1|
  h1[k1] = Hash.new { |h, k| h[k] = Math.max }
end

n, m = gets.strip.split.map(&:to_i)

m.times do |i|  
  start_vertex, end_vertex, weight = gets.strip.split.map(&:to_i)
  vertices[start_vertex][end_vertex] = [
    vertices[start_vertex][end_vertex],
    weight
  ].min
  vertices[end_vertex][start_vertex] = [
    vertices[end_vertex][start_vertex],
    weight
  ].min
end
start_vertex = gets.to_i

puts find_prim_weight(vertices, start_vertex)
