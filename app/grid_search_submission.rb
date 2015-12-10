PRIME = 1038211
BASE = 100

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

class RabinKarpSearch
  attr_reader :pattern, :array, :pattern_hash

  def initialize(pattern, array)
    @pattern = pattern
    @array = array
    @pattern_hash = generate_pattern_hash
  end

  def find_pattern
    array_hash = RollingHash.new(BASE, PRIME, pattern.size)
    slide_array = array[0..(pattern.size - 1)]
    slide_array.each { |e| array_hash.append(e) }

    if array_hash.hash == pattern_hash && slide_array == pattern
      true
    else
      i = 1
      while i < array.size - pattern.size + 1 do
        array_hash.append(array[i + pattern.size - 1])
        array_hash.skip(array[i - 1])
        slide_array.shift
        slide_array.push(array[i + pattern.size - 1])
        return true if array_hash.hash == pattern_hash && slide_array == pattern
        i += 1
      end
      false
    end
  end

  private

  def generate_pattern_hash
    rolling_hash = RollingHash.new(BASE, PRIME, pattern.size)
    pattern.each { |e| rolling_hash.append(e) }
    rolling_hash.hash
  end
end

class GridSearch
  attr_accessor :grid, :pattern, :numbers

  def initialize(grid, pattern)
    @grid = grid
    @pattern = pattern
    @numbers = {
      '0' => 0,
      '1' => 1,
      '2' => 2,
      '3' => 3,
      '4' => 4,
      '5' => 5,
      '6' => 6,
      '7' => 7,
      '8' => 8,
      '9' => 9
    }
  end

  def present?
    hsize = grid[0].size
    rolling_hashes = []
    k = 0

    while k < grid.size - pattern.size + 1 do
      j = 0

      while j < hsize do
        if k == 0
          i = k
          rolling_hash = RollingHash.new(BASE, PRIME, pattern.size)
          while i < k + pattern.size do
            rolling_hash.append(numbers[grid[i][j]])
            i += 1
          end
          rolling_hashes.push(rolling_hash)
        else
          rolling_hashes[j].append(numbers[grid[k + pattern.size - 1][j]])
          rolling_hashes[j].skip(numbers[grid[k - 1][j]])
        end
        j += 1
      end

      if RabinKarpSearch.new(pattern_hash, rolling_hashes.map(&:hash)).find_pattern
        return true
      end

      k += 1
    end

    false
  end

  def pattern_hash
    @pattern_hash ||= begin
      hashes = []

      j = 0
      while j < pattern[0].size do
        i = 0
        column_hash = RollingHash.new(BASE, PRIME, pattern.size)
        while i < pattern.size do
          column_hash.append(numbers[pattern[i][j]])
          i += 1
        end
        hashes.push(column_hash.hash)
        j += 1
      end      

      hashes
    end
  end
end

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  grid_r = list[0]
  grid_c = list[1]
  grid = Array.new(grid_r)
  grid_r.times { |i| grid[i] = gets.strip }

  list = gets.strip.split(' ').map(&:to_i)
  pattern_r = list[0]
  pattern_c = list[1]
  pattern = Array.new(pattern_r)
  pattern_r.times { |i| pattern[i] = gets.strip }

  if GridSearch.new(grid, pattern).present?
    puts 'YES'
  else
    puts 'NO'
  end
end
