require 'pry'
fibs = Array.new(80 + 1)
fibs[1] = [1, false]
fibs[2] = [2, true]
i = 3
j = 1
while i <= 80 do
  fibs[i] = [fibs[i - 1][0] + fibs[i - 2][0], j % 3 == 0]
  i += 1
  j += 1
end

even_fibs = []
i = 1
while i < fibs.length do
  even_fibs.push(fibs[i][0]) if fibs[i][1]
  i += 1
end
binding.pry
gets.to_i.times do
  n = gets.to_i

  sum = 0
  i = 0
  while i < even_fibs.length && even_fibs[i] < n do
    sum += even_fibs[i]
    i += 1
  end

  puts sum
end
