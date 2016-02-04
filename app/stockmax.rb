gets.to_i.times do
  n = gets.to_i
  prices = gets.strip.split.map(&:to_i)
  max_profit = 0

  max_price_so_far = prices[n - 1]
  max_prices = Array.new(n)
  max_prices[n - 1] = max_price_so_far
  i = n - 2
  while i >= 0 do
    max_price_so_far = [max_price_so_far, prices[i]].max
    max_prices[i] = max_price_so_far
    i -= 1
  end

  i = 0
  while i < n do
    max_profit += max_prices[i] - prices[i]
    i += 1
  end

  puts max_profit
end
