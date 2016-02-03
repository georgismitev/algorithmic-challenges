gets.to_i.times do
  n = gets.to_i
  sum_of_squares = (n * (n + 1) * (2 * n + 1)) / 6
  square_of_the_sum = ((n * (n + 1)) * (n * (n + 1))) / 4
  puts square_of_the_sum - sum_of_squares
end
