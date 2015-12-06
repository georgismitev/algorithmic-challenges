MATRIX_MOD = 1000000007

# version 1
# matrix = Array.new(max_m) { Array.new(max_n + 1) { 1 } }

# 1.upto(max_m - 1) do |i|
#   1.upto(max_n) do |j|
#     matrix[i][j] = (matrix[i - 1][j] + matrix[i][j - 1]) % MATRIX_MOD
#   end
# end

# version 2
# row = [1, 1]
# i = 2
# while i < m + n - 1 do
#   j = 0
#   next_row = Array.new(i + 1)
#   while j <= i do
#     if j == 0 || j == i
#       next_row[j] = 1
#     else
#       next_row[j] = (row[j - 1] + row[j]) % MATRIX_MOD
#     end
#     j += 1
#   end
#   row = next_row
#   i += 1
# end
# row[m]

class InverseModule
  def self.of(a, m)
    extended_gcd(a, m) % m if gcd(a, m) == 1
  end

  def self.gcd(a, b)
    b == 0 ? a : gcd(b, a % b)
  end

  # https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm
  def self.extended_gcd(a, b)
    s = 0
    old_s = 1
    # t = 1
    # old_t = 0
    r = b
    old_r = a
    while r != 0 do
      quotient = old_r / r
      old_r, r = r, old_r - quotient * r
      old_s, s = s, old_s - quotient * s
      # old_t, t = t, old_t - quotient * t
    end

    old_s
  end
end

matrix_facts = Array.new(2000007)
matrix_facts[0] = 1
matrix_facts[1] = 1
i = 2
while i < 2000007 do
  matrix_facts[i] = (matrix_facts[i - 1] * i) % MATRIX_MOD
  i += 1
end

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  m = list[0]
  n = list[1]
  facts_sum = matrix_facts[m + n - 2]
  facts_n = InverseModule.of(matrix_facts[n - 1], MATRIX_MOD)
  facts_m = InverseModule.of(matrix_facts[m - 1], MATRIX_MOD)
  puts (facts_sum * facts_m * facts_n) % MATRIX_MOD
end
