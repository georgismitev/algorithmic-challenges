def self.common_child_dp(a, b, diff)
  return diff if a.size == 0 || b.size == 0

  dp = Array.new(a.size) { Array.new(b.size) }

  0.upto(a.size - 1) { |i| dp[i][0] = a[i] == b[0] ? 1 : 0 }
  0.upto(b.size - 1) { |j| dp[0][j] = a[0] == b[j] ? 1 : 0 }

  1.upto(b.size - 1) do |j|
    1.upto(a.size - 1) do |i|
      if a[i] == b[j]
        dp[i][j] = 1 + dp[i - 1][j - 1]
      else
        dp[i][j] = [dp[i][j - 1], dp[i - 1][j]].max
      end
    end
  end

  dp[a.size - 1][b.size - 1] + diff
end

def self.common_child(a, b)
  diff = 0

  i, j = 0, 0
  i_start, j_start = 0, 0
  while i < a.size && j < b.size && a[i] == b[j] do
    i_start += 1
    j_start += 1
    i += 1
    j += 1
    diff += 1
  end

  i, j = a.size - 1, b.size - 1
  i_end, j_end = a.size - 1, b.size - 1
  while i > i_start && j > j_start && a[i] == b[j] do
    i_end -= 1
    j_end -= 1
    i -= 1
    j -= 1
    diff += 1
  end

  common_child_dp(a[i_start..i_end], b[j_start..j_end], diff)
end

puts common_child(gets.strip, gets.strip)
