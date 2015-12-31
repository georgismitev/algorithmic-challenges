gets.to_i.times do
  n = gets.to_i
  array = gets.strip.split(' ').map(&:to_i)
  total_sum = 0
  i = 0
  while i < n do
    total_sum += array[i]
    i += 1
  end

  left_sum = 0
  right_sum = total_sum - array[0]
  found = false
  i = 0
  
  while i < n do
    if left_sum == right_sum
      found = true
      break
    else
      left_sum += array[i]
      right_sum -= array[i + 1] if i < n - 1
    end

    i += 1
  end

  if found
    puts 'YES'
  else
    puts 'NO'
  end
end
