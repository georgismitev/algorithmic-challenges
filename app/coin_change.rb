def self.coin_change(amount, coins)
  dp = Array.new(amount + 1) { Array.new(coins.length) { 0 } }
  dp[0] = Array.new(coins.length) { 1 }

  # i amount
  # j coins
  i = 1
  while i <= amount do
    j = 0
    while j < coins.length do
      l = j >= 1 ? dp[i][j - 1] : 0
      r = i - coins[j] >= 0 ? dp[i - coins[j]][j] : 0
      dp[i][j] = l + r
      j += 1
    end
    i += 1
  end

  dp[amount][coins.length - 1]
end

n, m = gets.strip.split.map(&:to_i)
coins = gets.strip.split.map(&:to_i)
puts coin_change(n, coins)
