n = gets.to_i
array = gets.strip.split(' ').map(&:to_i)

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  x = list[0]
  y = list[1]
  if x == y
    if array[x - 1] % 2 == 1
      puts 'Odd'
    else
      puts 'Even'
    end
  elsif array[x] == 0 || array[x - 1] % 2 == 1
    puts 'Odd'
  else
    puts 'Even'
  end
end
