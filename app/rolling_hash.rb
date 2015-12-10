class RollingHash
  attr_accessor :hash
  attr_reader :base, :prime
  attr_reader :pow, :prime_base

  def initialize(base, prime, pattern_size)
    @base = base
    @prime = prime
    @hash = 0
    @pow = (base ** pattern_size) % prime
    @prime_base = prime * base
  end

  def append(new_value)
    @hash = (hash * base + new_value) % prime
  end

  def skip(old_value)
    @hash = (hash - old_value * pow + prime_base) % prime
  end
end
