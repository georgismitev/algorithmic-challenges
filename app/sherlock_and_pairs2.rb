gets.to_i.times do
  n = gets.to_i
  array = gets.strip.split.map(&:to_i)
  numbers = Hash.new { |hash, key| hash[key] = 0 }
  i = 0
  while i < n do
    numbers[array[i]] += 1
    i += 1
  end
  pairs = 0
  numbers.each_pair { |k, v| pairs += v * (v - 1) }
  puts pairs
end
