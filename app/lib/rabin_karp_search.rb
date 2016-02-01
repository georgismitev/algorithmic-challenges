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
