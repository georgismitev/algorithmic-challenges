fibs = {}
fibs[0] = 0
fibs[1] = 1
fibs[2] = 2
prev_prev = fibs[1]
prev = fibs[2]
max = 10 ** 10
while true do
  next_fib = prev + prev_prev
  fibs[next_fib] = next_fib
  break if next_fib >= max
  prev_prev = prev
  prev = next_fib
end

gets.strip.to_i.times do
  if fibs.key?(gets.strip.to_i)
    puts 'IsFibo'
  else
    puts 'IsNotFibo'
  end
end
