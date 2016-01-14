def self.lis_find_ceiling(number, array, end_value, t)
  ceiling_index = -1
  s, e = 0, end_value

  while s <= e do
    m = (s + e) / 2

    if array[t[m]] >= number
      ceiling_index = m
      e = m - 1
    else
      s = m + 1
    end
  end

  ceiling_index
end

def self.lis(array)
  t = Array.new(array.length)
  r = Array.new(array.length) { -1 }

  len = 0
  t[0] = 0
  i = 1
  while i < array.length do
    if array[i] < array[t[0]]
      t[0] = i
    elsif array[i] > array[t[len]]
      len += 1
      t[len] = i
      r[t[len]] = t[len - 1]
    else
      ceiling_index = lis_find_ceiling(array[i], array, len, t)
      t[ceiling_index] = i
      r[t[ceiling_index]] = t[ceiling_index - 1]
    end
    i += 1
  end

  len + 1
end

n = gets.to_i
array = Array.new(n)
n.times { |i| array[i] = gets.strip.to_i }
puts lis(array)
