gets.to_i.times do
  n = gets.to_i
  array = gets.strip.split.map(&:to_i)
  if n % 2 == 0
    puts 0
  else
    res = array[0]
    i = 2
    while i < array.length do
      res ^= array[i]
      i += 2
    end
    puts res
  end
end
