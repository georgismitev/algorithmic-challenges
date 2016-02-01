def self.number_from_index(i)
  four_remainder = i % 4
  case four_remainder
  when 0
    i
  when 1
    1
  when 2
    i + 1
  when 3
    0
  end
end

def self.xor_se(l, r)
  result = 0

  if r - l > 4
    range_start = l + (4 - l % 4)
    range_end = r - r % 4
    result = ((range_end - range_start) / 4) % 2 == 0 ? 0 : 2

    i = l
    while i < range_start
      result ^= number_from_index(i)
      i += 1
    end

    i = range_end
    while i <= r
      result ^= number_from_index(i)
      i += 1
    end
  else
    i = l
    while i <= r do
      result ^= number_from_index(i)
      i += 1
    end
  end

  result
end

queries = { }
gets.to_i.times do
  l, r = gets.strip.split.map(&:to_i)

  cached_query = queries[[l, r]]

  unless cached_query
    result = xor_se(l, r)
    queries[[l, r]] = result
    cached_query = result
  end

  puts cached_query
end
