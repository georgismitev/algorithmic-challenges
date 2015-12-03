input = gets.strip.split(' ').map(&:to_i)
n, m = input[0], input[1]
total_jar_candies = 0
m.times do
  list = gets.strip.split(' ').map(&:to_i)
  diff = list[1] - list[0] + 1
  total_jar_candies += diff * list[2]
end
puts total_jar_candies / n
