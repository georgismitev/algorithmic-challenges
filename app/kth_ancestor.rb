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
  MAX_NODES = 100001
  MAX_JUMP_LEVEL = 17 # log 100001

  attr_accessor :root, :tree_structure
  attr_accessor :initial_size, :jump_pointers

  def initialize(size)
    root_node = KthAncestorNode.new(0)
    @tree_structure = { }
    @tree_structure[0] = root_node
    @root = root_node
    @initial_size = size
    @jump_pointers = Array.new(MAX_NODES) { Array.new(MAX_JUMP_LEVEL) }
    @logn = (Math.log2(size) + 1).to_i
  end

  def initial_add(node, parent)
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
    @jump_pointers[node][0] = parent
  end

  def operation_add(node, parent)
    initial_add(node, parent)
    update_jump_pointers(node)
  end

  def remove(node)
    @tree_structure[@tree_structure[node].parent].delete(node)
    @tree_structure.delete(node)
    remove_jump_pointers(node)
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

  def build_all_jump_pointers
    i = 1
    while i < @logn do
      @tree_structure.keys.each do |j|
        next if j == 0
        parent = @tree_structure[j].parent
        parent_parent = @jump_pointers[parent][i - 1] || 0
        @jump_pointers[j][i] = @jump_pointers[parent_parent][i - 1] 
      end
      i += 1
    end
  end

  private

  def update_jump_pointers(node)
    i = 1
    while i < @logn do
      parent = @tree_structure[node].parent
      parent_parent = @jump_pointers[parent][i - 1] || 0
      @jump_pointers[node][i] = @jump_pointers[parent_parent][i - 1]
      i += 1
    end
  end

  def remove_jump_pointers(node)
    @jump_pointers[node] = Array.new(MAX_JUMP_LEVEL)
  end
end

gets.to_i.times do
  nodes = gets.to_i
  tree = KthAncestorTree.new(nodes)
  nodes.times { tree.initial_add(*(gets.strip.split.map(&:to_i))) }
  tree.build_all_jump_pointers
  gets.to_i.times do |i|
    query = gets.strip.split.map(&:to_i)
    if query[0] == 0
      tree.operation_add(query[2], query[1])
    elsif query[0] == 1
      tree.remove(query[1])
    elsif query[0] == 2
      puts tree.query(query[1], query[2])
    end
  end
end
