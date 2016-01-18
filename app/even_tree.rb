graph = Hash.new { |h, k| h[k] = [] }

n, m = gets.strip.split.map(&:to_i)
m.times do
  start_vertex, end_vertex = gets.strip.split.map(&:to_i)
  graph[start_vertex].push(end_vertex)
  graph[end_vertex].push(start_vertex)
end

visited = {}
number_of_children = {}
stack = [[graph.keys[0], false]]

while !stack.empty? do
  vertex, remove_from_stack = stack.pop
  visited[vertex] = 1
  unless remove_from_stack
    stack.push([vertex, true])
    graph[vertex].each do |edge|
      stack.push([edge, false]) unless visited[edge]
    end
  else
    children = 0
    graph[vertex].each do |e|
      children += number_of_children[e] if number_of_children[e]
    end
    number_of_children[vertex] = children + 1
  end
end

edges = -1

number_of_children.each_pair do |_, v|
  edges += 1 if v % 2 == 0
end

puts edges
