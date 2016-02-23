MAX = 1024

def self.find_min_three_path(graph, start_vertex)
  return MAX if graph[start_vertex].length == 0

  min = MAX
  distances = { }

  graph[start_vertex].keys.each { |v| distances[v] = graph[start_vertex][v] }

  distances.keys.each do |child_vertex|
    graph[child_vertex].keys.each do |v|
      next if v == start_vertex
      if distances[child_vertex] + graph[child_vertex][v] < min
        min = distances[child_vertex] + graph[child_vertex][v]
      end
    end
  end

  min
end

t = $stdin.gets.to_i
k = 0
while k < t do
  graph = Hash.new { |h, k| h[k] = { } }

  i = 0
  _, m = $stdin.gets.split.map!(&:to_i)
  while i < m do
    a, b, d = $stdin.gets.split.map!(&:to_i)
    graph[a][b] = d
    graph[b][a] = d
    i += 1
  end

  min_path = MAX
  graph.keys.each { |v| min_path = [find_min_three_path(graph, v), min_path].min }
  puts min_path

  k += 1
end
