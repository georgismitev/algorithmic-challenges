class SuffixTreeNode
  attr_accessor :children
  attr_accessor :suffix_link
  attr_accessor :start_index # start
  attr_accessor :end_index # end
  attr_accessor :suffix_index
  attr_reader :string

  def initialize(start_index, end_index, string = nil, root_node = nil)
    @children = Array.new(256)
    @suffix_link = root_node
    @start_index = start_index
    @end_index = end_index
    @suffix_index = -1
    @string = string
  end

  def edge_length
    @end_index - @start_index + 1
  end
end
