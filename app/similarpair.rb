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

def self.find_root(tree)
  childs = []
  tree.values.each { |v| v.each { |e| childs.push(e) } }
  (tree.keys - childs).first
end

def self.count_pairs(tree, binary_indexed_tree, t)
  root = find_root(tree)
  pairs = 0
  stack = [[root, true]]

  while !stack.empty? do
    node, increment_bit = stack.pop
    if increment_bit
      pairs += binary_indexed_tree.range_value_of(node - t, node + t)
      stack.push([node, false])
      binary_indexed_tree.update(node, 1)
      tree[node].each { |edge| stack.push([edge, true]) }
    else
      binary_indexed_tree.update(node, -1)
    end
  end

  pairs
end

tree = Hash.new { |hash, key| hash[key] = [] }
n, t = gets.strip.split(' ').map(&:to_i)
(n - 1).times do
  start_edge, end_edge = gets.strip.split(' ').map(&:to_i)
  tree[start_edge].push(end_edge)
end
binary_indexed_tree = BinaryIndexedTree.new(n)
puts count_pairs(tree, binary_indexed_tree, t)
