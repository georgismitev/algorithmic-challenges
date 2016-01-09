n = gets.to_i
numbers = gets.strip.split.map(&:to_i)
max_value = -1
numbers.each { |e| max_value = [max_value, e].max }
array = Array.new(max_value + 1) { 0 }
numbers.each { |e| array[e] += 1 }
puts array.join(' ')
