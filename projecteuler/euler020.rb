def self.sum_digits(number)
  sum = 0

  while number > 9 do
    sum += number % 10
    number /= 10
  end

  sum += number
  sum
end

def self.precompute_digits
  @precomputed_fact_digits ||= begin
    fact_digits = Array.new(1001)
    fact_digits[0] = 1
    fact_digits[1] = 1

    facts = Array.new(1001)
    facts[0] = 1
    facts[1] = 1

    i = 2
    while i <= 1000 do
      facts[i] = facts[i - 1] * i
      fact_digits[i] = sum_digits(facts[i])
      i += 1
    end

    fact_digits
  end
end

fact_digits = precompute_digits
gets.to_i.times { puts fact_digits[gets.to_i] }
