class TreeNode
  attr_accessor :value, :parent, :left, :right

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @left = @right = TreeNilNode.instance
  end
end
