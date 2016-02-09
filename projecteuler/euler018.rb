gets.to_i.times do
  n = gets.to_i
  triangle = Array.new(n)
  n.times { |i| triangle[i] = gets.strip.split.map(&:to_i) }

  dp = Array.new(n)
  dp[0] = [triangle[0][0]]
  1.upto(n - 1) do |i|
    row_size = i + 1
    row = Array.new(row_size)
    row[0] = dp[i - 1][0] + triangle[i][0]
    prev_row_last = triangle[i - 1].length - 1
    curr_row_last = triangle[i].length - 1
    row[row_size - 1] = dp[i - 1][prev_row_last] + triangle[i][curr_row_last]
    j = 1
    while j < row_size - 1 do
      row[j] = [
        dp[i - 1][j - 1] + triangle[i][j],
        dp[i - 1][j] + triangle[i][j],
      ].max
      j += 1
    end
    dp[i] = row
  end

  i = 0
  max_sum = -1
  while i < dp[n - 1].length do
    max_sum = [dp[n - 1][i], max_sum].max
    i += 1
  end

  puts max_sum
end
