#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

positive = 0.0
negative = 0.0
zero = 0.0
i = 0
while i < n do
  if arr[i] > 0
    positive += 1
  elsif arr[i] == 0
    zero += 1
  else
    negative += 1
  end
  i += 1
end

puts positive / n
puts negative / n
puts zero / n
