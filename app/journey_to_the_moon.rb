graph = Hash.new { |h, k| h[k] = {} }

n, l = gets.strip.split.map(&:to_i)
l.times do |i|
  a, b = gets.strip.split.map(&:to_i)
  graph[a][b] = 1
  graph[b][a] = 1
end

components = Hash.new { |h, k| h[k] = {} }
visited = {}
stack = [[graph.keys.first, 1]]

while !stack.empty? do
  vertex, component = stack.pop
  visited[vertex] = 1
  components[component][vertex] = 1
  graph[vertex].each_pair { |k, _| stack.push([k, component]) unless visited[k] }
  if stack.size == 0
    component += 1
    graph.each_pair do |k, _|
      unless visited[k]
        stack.push([k, component])
        break
      end
    end
  end
end

ways = (n * (n - 1)) >> 1
astronauts = components.values.map(&:length)

i = 0
while i < astronauts.length do
  ways -= (astronauts[i] * (astronauts[i] - 1)) >> 1
  i += 1
end

puts [ways, 0].max
