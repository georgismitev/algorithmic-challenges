gets.to_i.times do
  s = gets.strip
  if s.size % 2 == 1
    puts -1
  else
    size = s.size / 2
    a = s[0..size - 1]
    b = s[size..-1]
    alphabet_a = Hash.new { |hash, key| hash[key] = 0 }
    alphabet_b = Hash.new { |hash, key| hash[key] = 0 }

    i = 0
    while i < a.size do
      alphabet_a[a[i]] += 1
      i += 1
    end

    i = 0
    while i < b.size do
      alphabet_b[b[i]] += 1
      i += 1
    end

    alphabet_b.each_pair do |k, v|
      if v >= alphabet_a[k]
        alphabet_b[k] -= alphabet_a[k]
      else
        alphabet_b[k] = 0
      end
    end

    chars_to_replace = 0

    alphabet_b.each_pair { |k, v| chars_to_replace += v }

    puts chars_to_replace
  end
end
