MAX = 1024

def self.find_min_three_path(graph, start_vertex)
  return MAX if graph[start_vertex].length == 0

  min = MAX
  distances = { }

  graph[start_vertex].keys.each { |v| distances[v] = graph[start_vertex][v] }

  distances.keys.each do |child_vertex|
    graph[child_vertex].keys.each do |v|
      if v != start_vertex && distances[child_vertex] + graph[child_vertex][v] < min
        min = distances[child_vertex] + graph[child_vertex][v]
      end
    end
  end

  min
end

gets.to_i.times do
  graph = Hash.new { |h, k| h[k] = { } }

  _, m = gets.strip.split.map(&:to_i)
  m.times do
    a, b, d = gets.strip.split.map(&:to_i)
    graph[a][b] = d
    graph[b][a] = d
  end

  min_path = MAX

  graph.keys.each do |vertex|
    min_path = [find_min_three_path(graph, vertex), min_path].min
  end

  puts min_path
end
