class Tree
  attr_accessor :root, :size

  def initialize
    @root = TreeNilNode.instance
    @size = 0
  end
end
