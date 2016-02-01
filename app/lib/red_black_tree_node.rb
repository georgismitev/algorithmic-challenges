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
