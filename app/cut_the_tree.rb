min = 100100007

class UndirectedGraph
  attr_accessor :adjacency_list

  def initialize
    @adjacency_list = Hash.new { |hash, key| hash[key] = [0, []] }
  end

  def add_vertex(vertex, value)
    adjacency_list[vertex][0] = value
  end

  def add_edge(start_vertex, end_vertex)
    adjacency_list[start_vertex][1].push(end_vertex)
    adjacency_list[end_vertex][1].push(start_vertex)
  end

  def [](vertex)
    self.adjacency_list[vertex]
  end
end

graph = UndirectedGraph.new
sums = {}
total = 0
i = 0

n = gets.to_i
gets.strip.split(' ').map(&:to_i).each do |vertex_value|
  graph.add_vertex(i + 1, vertex_value)
  total += vertex_value
  i += 1
end

(n - 1).times { graph.add_edge(*(gets.strip.split(' ').map(&:to_i))) }

visited = {}

stack = [1]
visited[1] = 1
i = 0
while visited.length < n do
  graph[stack[i]][1].each do |edge|
    unless visited[edge]
      stack.push(edge)
      visited[edge] = 1
    end
  end
  i += 1
end

visited = {}

while !stack.empty? do
  vertex = stack.pop
  visited[vertex] = 1
  sum = graph[vertex][0]
  graph[vertex][1].each { |edge| sum += sums[edge] if visited[edge] }
  sums[vertex] = sum
  min = [min, (sum - (total - sum)).abs].min
end

puts min
