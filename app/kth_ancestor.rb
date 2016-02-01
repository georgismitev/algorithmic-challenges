gets.to_i.times do
  nodes = gets.to_i
  nodes.times do
    x, y = gets.strip.split.map(&:to_i)
  end
  q = gets.to_i
  queries = Array.new(q)
  q.times do |i|
    q[i] = gets.strip.split.map(&:to_i)
  end
end
