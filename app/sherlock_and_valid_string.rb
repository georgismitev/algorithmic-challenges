s = gets.strip

alphabet = Hash.new { |hash, key| hash[key] = 0 }
i = 0

while i < s.size do
  alphabet[s[i]] += 1
  i += 1
end

numbers = Hash.new { |hash, key| hash[key] = 0 }
alphabet.each_pair { |k, v| numbers[v] += 1 }

if numbers.size == 1 || (numbers.size == 2 && numbers.values.include?(1))
  puts 'YES'
else
  puts 'NO'
end
