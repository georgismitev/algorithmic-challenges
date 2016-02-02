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
    @jump_pointers = Array.new(MAX_NODES) do
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    end
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
      level = 0
      while kthparent > 0 do
        node = @jump_pointers[node][level] if kthparent & 1 == 1
        kthparent >>= 1
        level += 1
      end
      node || 0
    else
      0
    end
  end

  def build_jump_pointers
    i = 1
    while i < @logn do
      @tree_structure.keys.each do |node|
        parent = @jump_pointers[node][i - 1]
        @jump_pointers[node][i] = @jump_pointers[parent][i - 1]
      end
      i += 1
    end
  end

  private

  def update_jump_pointers(node)
    i = 1
    while i < @logn do
      parent = @jump_pointers[node][i - 1]
      @jump_pointers[node][i] = @jump_pointers[parent][i - 1]
      i += 1
    end
  end

  def remove_jump_pointers(node)
    @jump_pointers[node] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  end
end
