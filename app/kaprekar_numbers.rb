p = gets.to_i
q = gets.to_i

max = 100007
squares = Array.new(max)
i = 1
while i < max do
  squares[i] = i * i
  i += 1
end

kaprekar_numbers = Array.new(max) { 0 }
kaprekar_numbers[0] = 0
kaprekar_numbers[1] = 1
i = 2
while i < max do
  string = squares[i].to_s
  size = string.size / 2
  if string[0..(size - 1)].to_i + string[size..-1].to_i == i
    kaprekar_numbers[i] = 1
  end
  i += 1
end

numbers = []

p.upto(q + 1) do |j|
  numbers.push(j) if kaprekar_numbers[j] == 1
end

if numbers == []
  puts 'INVALID RANGE'
else
  puts numbers.join(' ')
end
