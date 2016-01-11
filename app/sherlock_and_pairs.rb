def self.merge_sort(array)
  return array if array.length == 1
  middle = array.length / 2 - 1
  left = merge_sort(array[0..middle])
  right = merge_sort(array[(middle + 1)..-1])
  merge(left, right)
end

def self.merge(left, right)
  result = Array.new(left.length + right.length)
  i = 0
  j = 0
  k = 0

  while i < left.length && j < right.length do
    if left[i].value > right[j].value
      result[k] = right[j]
      j += 1
    else
      result[k] = left[i]
      i += 1
    end

    k += 1
  end

  while i < left.length do
    result[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.length do
    result[k] = right[j]
    j += 1
    k += 1
  end

  result
end

class SherlockPair
  attr_accessor :value, :index

  def initialize(value, index)
    @value = value
    @index = index
  end
end

gets.to_i.times do
  n = gets.to_i

  i = 0
  array = gets.strip.split.map do |value|
    i += 1
    SherlockPair.new(value.to_i, i - 1)
  end

  array = merge_sort(array)
  pairs = 0
  i = 0
  while i < array.length - 1 do
    j = 0
    while i < array.length - 1 && array[i].value == array[i + 1].value do
      i += 1
      j += 1
    end
    pairs += (j + 1) * j
    i += 1
  end

  puts pairs
end
