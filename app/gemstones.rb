n = gets.to_i
match = gets.split('')
(n - 1).times do
    match = match & gets.split('')
end
puts match.size
