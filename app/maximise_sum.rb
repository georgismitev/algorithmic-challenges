require 'singleton'

class RedBlackTreeNode
  attr_accessor :value, :color, :parent, :left, :right

  def initialize(value, color = :red)
    @value = value
    @color = color
    @left = @right = @parent = RedBlackNilNode.instance
  end

  def red?
    color == :red
  end

  def black?
    color == :black
  end
end

class RedBlackNilNode < RedBlackTreeNode
  include Singleton

  def initialize
    @color = :black
    @value = nil
    @left = nil
    @right = nil
    @parent = nil
  end

  def black?
    true
  end

  def red?
    false
  end

  def nil?
    true
  end
end

class RedBlackTree
  attr_accessor :root, :size

  def initialize
    @root = RedBlackNilNode.instance
    @size = 0
  end

  def find(value)
    node = root
    current_value = nil

    while !node.nil? do
      if node.value > value
        if !current_value
          current_value = node.value
        elsif node.value < current_value
          current_value = node.value
        end
        node = node.left
      else
        node = node.right
      end
    end

    current_value
  end

  def empty?
    size == 0
  end

  def find_parent(value)
    node = root
    parent = RedBlackNilNode.instance

    while !node.nil? do
      parent = node
      node.value < value ? node = node.right : node = node.left
    end

    parent
  end

  def rotate_right(node, change_colors = true)
    parent = node.parent
    node.parent = parent.parent
    if parent.parent != RedBlackNilNode.instance
      if parent.parent.right == parent
        parent.parent.right = node
      else
        parent.parent.left = node
      end
    else
      self.root = node
    end
    right = node.right
    node.right = parent
    parent.parent = node
    parent.left = right
    right.parent = parent if right

    if change_colors
      node.color = :black
      parent.color = :red
    end
  end

  def rotate_left(node, change_colors = true)
    parent = node.parent
    node.parent = parent.parent
    if parent.parent != RedBlackNilNode.instance
      if parent.parent.right == parent
        parent.parent.right = node
      else
        parent.parent.left = node
      end
    else
      self.root = node
    end
    left = node.left
    node.left = parent
    parent.parent = node
    parent.right = left
    left.parent = parent if left

    if change_colors
      node.color = :black
      parent.color = :red
    end
  end

  def insert(value)
    if empty?
      self.root = RedBlackTreeNode.new(value, :black)
    else
      new_node = RedBlackTreeNode.new(value)
      parent = find_parent(value)
      
      new_node.parent = parent
      
      if parent.nil?
        self.root = new_node
      else
        if parent.value < new_node.value
          parent.right = new_node
        else
          parent.left = new_node
        end
      end

      while new_node != root && new_node.parent.red? do
        sibling = if new_node.parent == new_node.parent.parent.left
          new_node.parent.parent.right
        else
          new_node.parent.parent.left
        end

        if !sibling.nil? && sibling.red?
          new_node.parent.color = :black
          sibling.color = :black
          new_node.parent.parent.color = :red
          new_node = new_node.parent.parent
        else
          if new_node.parent == new_node.parent.parent.left
            if new_node == new_node.parent.right
              old_parent = new_node.parent
              rotate_left(new_node)
              new_node = old_parent
            end
            rotate_right(new_node.parent)
          else
            if new_node == new_node.parent.left
              old_parent = new_node.parent
              rotate_right(new_node)
              new_node = old_parent
            end
            rotate_left(new_node.parent)
          end
        end
      end
    end

    root.color = :black

    self.size += 1
  end
end

def self.maximise_sum(array, m, n)
  prefix_array = Array.new(n)
  prefix_array[0] = array[0] % m

  prefix_rbtree = RedBlackTree.new
  prefix_rbtree.insert(prefix_array[0])

  i = 1
  max_value = prefix_array[0]

  while i < n do
    prefix_array[i] = (prefix_array[i - 1] + array[i]) % m
    max_ending_at_i = prefix_array[i]
    prev_sum = prefix_rbtree.find(prefix_array[i])
    max_ending_at_i = (prefix_array[i] - prev_sum) % m if prev_sum
    max_value = [max_value, max_ending_at_i].max
    prefix_rbtree.insert(prefix_array[i])
    i += 1
  end

  max_value
end

gets.to_i.times do
  n, m = gets.strip.split(' ').map(&:to_i)
  array = gets.strip.split(' ').map(&:to_i)
  puts maximise_sum(array, m, n)
end
