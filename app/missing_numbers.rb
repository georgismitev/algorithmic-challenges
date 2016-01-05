n = gets.to_i
a = gets.strip.split(' ').map(&:to_i)
m = gets.to_i
b = gets.strip.split(' ').map(&:to_i)

a_hash = Hash.new { |hash, key| hash[key] = 0 }
b_hash = Hash.new { |hash, key| hash[key] = 0 }

a.length.times { |i| a_hash[a[i]] += 1 }
b.length.times { |i| b_hash[b[i]] += 1 }

missing_numbers = []
b_hash.each_pair do |k, v|
  next if a_hash[k] == v
  missing_numbers.push(k) if a_hash[k].nil? || a_hash[k] != v
end

puts missing_numbers.sort.join(' ')
