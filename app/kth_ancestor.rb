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

class KthAncestorTree
  attr_accessor :root, :tree_structure

  def initialize
    root_node = KthAncestorNode.new(0)
    @tree_structure = { }
    @tree_structure[0] = root_node
    @root = root_node
  end

  def add(node, parent)
    parent_node = @tree_structure[parent]

    unless @tree_structure[parent]
      parent_node = KthAncestorNode.new(parent)
      @tree_structure[parent] = parent_node
    end

    @tree_structure[parent].add(node)

    unless @tree_structure[node]
      @tree_structure[node] = KthAncestorNode.new(node, parent)
    end

    @tree_structure[node].parent = parent unless @tree_structure[node].parent
  end

  def remove(node)
    @tree_structure[@tree_structure[node].parent].delete(node)
    @tree_structure.delete(node)
  end

  def query(node, kthparent)
    if @tree_structure[node]
      parent = node

      while kthparent > 0 do
        parent = @tree_structure[parent].parent
        kthparent -= 1
        return 0 if parent == 0 && kthparent > 0
      end

      parent
    else
      0
    end
  end
end

gets.to_i.times do
  tree = KthAncestorTree.new

  nodes = gets.to_i
  nodes.times do
    x, y = gets.strip.split.map(&:to_i)
    tree.add(x, y)
  end

  q = gets.to_i
  queries = Array.new(q)
  q.times do |i|
    query = gets.strip.split.map(&:to_i)
    if query[0] == 0
      tree.add(query[2], query[1])
    elsif query[0] == 1
      tree.remove(query[1])
    elsif query[0] == 2
      puts tree.query(query[1], query[2])
    end
  end
end
