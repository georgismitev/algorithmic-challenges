n, k, q = gets.strip.split.map(&:to_i)
array = gets.strip.split.map(&:to_i)
idx = Array.new(q)
q.times { |i| idx[i] = gets.to_i }
k %= n
idx.length.times { |i| puts array[idx[i] - k] }
