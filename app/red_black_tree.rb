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
end
