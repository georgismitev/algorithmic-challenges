def self.unbounded_knapsack_sum(array, max_amount, current_amount = 0, hashed_results = {})
  sums = []

  array.each do |e|
    if current_amount + e <= max_amount
      result = hashed_results[current_amount + e]
      if result
        sums.push(result)
      else
        sum = unbounded_knapsack_sum(array, max_amount, current_amount + e, hashed_results)
        hashed_results[current_amount + e] = sum
        sums.push(sum)
      end
    end
  end

  sums.max || current_amount
end

def self.unbounded_knapsack_sum_dp(array, max_amount)
  dp = Array.new(max_amount + 1) { 0 }

  i = 1
  while i <= max_amount do
    j = 0
    while j < array.length do
      dp[i] = [dp[i], array[j] + dp[i - array[j]]].max if array[j] <= i
      j += 1
    end
    i += 1
  end

  dp[max_amount]
end

gets.to_i.times do
  n, k_expected_sum = gets.strip.split.map(&:to_i)
  list = gets.strip.split.map(&:to_i)
  puts unbounded_knapsack_sum_dp(list, k_expected_sum)
end
