MOD = 1000000007
max_size = 500
dp = Array.new(max_size + 1) { Array.new(max_size + 1) }

i = 0
while i <= max_size do
  dp[0][i] = 1
  i += 1
end

i = 0
while i <= max_size do
  dp[i][0] = 1
  i += 1
end

i = 1
while i <= max_size do
  j = 1
  while j <= max_size do
    dp[i][j] = (dp[i][j - 1] + dp[i - 1][j]) % MOD
    j += 1
  end
  i += 1
end

gets.to_i.times do
  n, m = gets.strip.split.map(&:to_i)
  puts dp[n][m] % MOD
end
