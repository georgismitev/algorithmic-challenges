s = gets
alphabet_hash = Hash.new { |hash, key| hash[key] = 0 }
pangram = false

i = 0
while i < s.size do
    alphabet_hash[s[i].downcase] += 1
    if alphabet_hash.keys.size == 27
        pangram = true
        break
    end
    i += 1
end

if pangram
    puts 'pangram'
else
    puts 'not pangram'
end
