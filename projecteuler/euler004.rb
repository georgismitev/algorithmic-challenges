def self.palindrome_number(n)
  (n / 100) * 100000 +
  ((n % 100) / 10) * 10000 +
  (n % 10) * 1000 +
  (n % 10) * 100 +
  ((n % 100) / 10) * 10 +
  n / 100
end

def three_digits?(n)
  n > 99 && n < 1000
end

def self.three_digit_factors(n)
  factors_found = false

  i = 2
  while i * i <= n do
    if n % i == 0
      l, r = i, n / i
      if three_digits?(l) && three_digits?(r)
        factors_found = true
        break
      end
    end
    i += 1
  end

  factors_found
end

def self.generate_palindromes
  palindromes = []
  i = 101
  while i < 1000 do
    palindrome = palindrome_number(i)
    palindromes.push(palindrome) if three_digit_factors(palindrome)
    i += 1
  end

  palindromes
end

palindromes = generate_palindromes

gets.to_i.times do
  palindrome = -1
  n = gets.to_i

  s, e = 0, palindromes.length - 1
  while s <= e do
    m = (s + e) >> 1
    if palindromes[m] < n
      palindrome = palindromes[m]
      s = m + 1
    else
      e = m - 1
    end
  end

  puts palindrome
end
