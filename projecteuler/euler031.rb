MOD = 1000000007
MAX = 100000

def self.coin_sums
  coins = [1, 2, 5, 10, 20, 50, 100, 200]
  dp = Array.new(MAX + 1) { Array.new(coins.length + 1) }
  dp[0] = Array.new(coins.length + 1) { 1 }
  dp[1] = Array.new(coins.length + 1) { 1 }

  i = 2
  while i <= MAX do
    dp[i][0] = 1
    dp[i][1] = 1
    i += 1
  end

  i = 2
  while i <= MAX do
    j = 2
    while j <= coins.length do
      if coins[j - 1] == i
        dp[i][j] = [dp[i][j - 1], dp[i - 1][j]].max + 1
      elsif coins[j - 1] <= i
        dp[i][j] = dp[i][j - 1] + dp[i - coins[j - 1]][j]
      else
        dp[i][j] = dp[i][j - 1]
      end

      dp[i][j] %= MOD

      j += 1
    end

    i += 1
  end

  dp
end

dp = coin_sums
gets.to_i.times { puts dp[gets.to_i][8] }
