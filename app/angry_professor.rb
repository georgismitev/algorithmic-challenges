gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  students = list[0]
  threshold = list[1]
  arrivals = gets.strip.split(' ').map(&:to_i)
  negative = 0
  i = 0
  while i < arrivals.size do
    negative += 1 if arrivals[i] <= 0
    i += 1
  end
  if negative < threshold
    puts 'YES'
  else
    puts 'NO'
  end
end
