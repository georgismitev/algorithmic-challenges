a = gets.strip
b = gets.strip
alphabet_a = Hash.new { |hash, key| hash[key] = 0 }
alphabet_b = Hash.new { |hash, key| hash[key] = 0 }
total = 0

i = 0
while i < a.size do
  alphabet_a[a[i]] += 1
  i += 1
  total += 1
end

i = 0
while i < b.size do
  alphabet_b[b[i]] += 1
  total += 1
  i += 1
end

chars_to_delete = 0
common_keys = alphabet_a.keys & alphabet_b.keys
common_keys.each do |key|
  if alphabet_a[key] != alphabet_b[key]
    chars_to_delete += (alphabet_a[key] - alphabet_b[key]).abs
  end
end

alphabet_a.each_pair do |key, value|
  next if common_keys.include?(key)
  chars_to_delete += value
end

alphabet_b.each_pair do |key, value|
  next if common_keys.include?(key)
  chars_to_delete += value
end

puts chars_to_delete
