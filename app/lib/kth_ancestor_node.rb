class KthAncestorNode
  attr_accessor :value, :parent, :children

  def initialize(value, parent = nil)
    @value = value
    @parent = parent
    @children = { }
  end

  def add(child)
    @children[child] = 1 unless @children[child]
  end

  def delete(child)
    @children.delete(child)
  end
end
