lastans = 0
n, q = gets.strip.split.map(&:to_i)
array = Array.new(n) { [] }
q.times do |i|
  operation, x, y = gets.strip.split.map(&:to_i)
  position = (x ^ lastans) % n
  if operation == 1
    array[position].push(y)
  else
    size = array[position].length
    lastans = array[position][y % size]
    puts lastans
  end
end
