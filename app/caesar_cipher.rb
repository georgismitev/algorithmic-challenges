require 'set'

lowercase = {}
('a'..'z').to_a.each { |c| lowercase[c] = c.ord }
uppercase = {}
('A'..'Z').to_a.each { |c| uppercase[c] = c.ord }
letters_to_encrypt = Set.new
lowercase.keys.each { |k| letters_to_encrypt.add(k) }
uppercase.keys.each { |k| letters_to_encrypt.add(k) }

n = gets.to_i
s = gets.strip
k = gets.to_i # number of letters to rotate

i = 0
while i < n do
  unless letters_to_encrypt.include?(s[i])
    i += 1
    next
  else
    encrypted_letter = if lowercase.key?(s[i])
      ('a'.ord + (lowercase[s[i]] + k - 'a'.ord) % 26).chr
    else
      ('A'.ord + (uppercase[s[i]] + k - 'A'.ord) % 26).chr
    end
    s[i] = encrypted_letter
    i += 1
  end
end

puts s
