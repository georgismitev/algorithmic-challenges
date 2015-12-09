#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
left = 0
right = 0

i = 0
j = n - 1

for a_i in (0..n-1)
  a_t = gets.strip
  a[a_i] = a_t.split(' ').map(&:to_i)
  left += a[a_i][i]
  right += a[a_i][j]
  i += 1
  j -= 1
end

puts (left - right).abs
