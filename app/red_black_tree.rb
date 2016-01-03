require 'pry'

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

    while !node.nil? do
      if node.value < value
        if node.right != RedBlackNilNode.instance
          node = node.right
        else
          break
        end
      else
        if node.left != RedBlackNilNode.instance
          node = node.left
        else
          break
        end
      end
    end

    node
  end

  def rotate_right(node)
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
    # change colors
  end

  def rotate_left(node)
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
  end
end
