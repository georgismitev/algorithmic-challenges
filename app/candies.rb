def self.candies(n, ratings)
  given_candies = Array.new(n) { 1 }

  i = 1
  while i < n do
    if ratings[i] > ratings[i - 1]
      given_candies[i] = given_candies[i - 1] + 1
    end

    i += 1
  end

  i = n - 1
  while i > 0 do
    if ratings[i - 1] > ratings[i]
      given_candies[i - 1] = [
        given_candies[i - 1],
        given_candies[i]+ 1
      ].max
    end

    i -= 1
  end

  total_candies = 0
  i = 0
  while i < n do
    total_candies += given_candies[i]
    i += 1
  end

  total_candies
end

n = gets.to_i
ratings = Array.new(n)
n.times { |i| ratings[i] = gets.to_i }
puts candies(n, ratings)
