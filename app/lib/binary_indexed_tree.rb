class BinaryIndexedTree
  attr_accessor :array
  attr_reader :length

  def initialize(length)
    @array = Array.new(length + 1) { 0 }
    @length = length
  end

  def update(index, value)
    while index <= length do
      array[index] += value
      index += (index & -index)
    end
  end

  def range_value_of(start_index, end_index)
    start_index = 1 if start_index < 1
    end_index = length if end_index > length
    value_of(end_index) - (start_index == 1 ? 0 : value_of(start_index - 1))
  end

  def value_of(index)
    sum = 0
    while index > 0 do
      sum += array[index]
      index -= (index & -index)
    end
    sum
  end
end
