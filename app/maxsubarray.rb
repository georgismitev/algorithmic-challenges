module Math
  FIXNUM_MAX = (2**(0.size * 8 -2) -1)
  FIXNUM_MIN = -(2**(0.size * 8 -2))

  def self.max
    FIXNUM_MAX
  end

  def self.min
    FIXNUM_MIN
  end
end

def self.maxsubarray(array)
  i = 0
  positive_sum = 0
  negative_sum = Math.min
  while i < array.length do
    if array[i] > 0
      positive_sum += array[i]
    else
      negative_sum = [negative_sum, array[i]].max
    end

    i += 1
  end

  non_contiguous_sum = positive_sum > 0 ? positive_sum : negative_sum

  i = 1
  current_sum = array[0]
  contiguous_sum = current_sum
  while i < array.length do
    current_sum = [current_sum + array[i], array[i]].max
    contiguous_sum = [contiguous_sum, current_sum].max
    i += 1
  end

  return contiguous_sum, non_contiguous_sum
end

gets.to_i.times do
  n = gets.to_i
  array = gets.strip.split.map(&:to_i)
  puts maxsubarray(array).join(' ')
end
