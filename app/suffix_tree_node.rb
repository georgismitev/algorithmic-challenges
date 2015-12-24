class SuffixTreeNode
  attr_accessor :children
  attr_accessor :suffix_link
  attr_accessor :suffix_index
  attr_accessor :start_index
  attr_accessor :split_end

  def initialize(start_index, split_end = nil, root_node = nil)
    @children = Array.new(256)
    @suffix_link = root_node
    @start_index = start_index
    @split_end = split_end
    @suffix_index = -1
  end
end
