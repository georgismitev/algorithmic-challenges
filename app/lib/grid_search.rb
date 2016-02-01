require 'pry'

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
        rolling_hash = RollingHash.new(BASE, PRIME, pattern.size)
        while i < pattern.size do
          rolling_hash.append(numbers[pattern[i][j]])
          i += 1
        end
        hashes.push(rolling_hash.hash)
        j += 1
      end

      hashes
    end
  end
end
