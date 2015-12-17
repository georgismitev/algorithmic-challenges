gets.to_i.times do
  s = gets
  anagram_size = 1
  anagram_hash = Hash.new { |hash, key| hash[key] = 0 }

  while anagram_size < s.size do
    i = 0
    while i < s.size - anagram_size + 1 do
      anagram_hash[s[i..i + anagram_size - 1].split('').sort] += 1
      i += 1
    end
    anagram_size += 1
  end

  pairs = 0
  anagram_hash.each_pair { |k, v| pairs += v * (v - 1) / 2 if v >= 2 }
  puts pairs
end
