class InverseModule
  def self.of(a, m)
    extended_gcd(a, m) % m if gcd(a, m) == 1
  end

  def self.naive(a, m)
    return nil if gcd(a, m) != 1

    i = 0

    while i < m do
      return i if ((a * i) % m) == 1
      i += 1
    end
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
