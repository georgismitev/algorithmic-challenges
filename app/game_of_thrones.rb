string = gets.chomp 

found = 0
alphabet_hash = Hash.new { |hash, key| hash[key] = 0 }

i = 0
while i < string.size do
  alphabet_hash[string[i]] += 1
  i += 1
end

even = 0
odd = 0
alphabet_hash.each_pair do |k, v|
  if v % 2 == 0
    even += 1
  else
    odd += 1
  end
end

found = 1 if (even > 0 && odd == 0) || odd == 1

if found == 1
  puts "YES"
else
  puts "NO"
end
