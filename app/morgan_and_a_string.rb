class CreateInvertedSuffixArray
  def self.from(string)
    # invert(CreateSuffixArray.with_sorting(string))
    invert(CreateSuffixArrayWithTree.new(string).create)
  end

  def self.invert(suffix_array)
    inverted = Array.new(suffix_array.size - 1)

    i = 1
    while i < suffix_array.size do
      inverted[suffix_array[i]] = i
      i += 1
    end

    inverted
  end
end

class SuffixTreeNode
  attr_accessor :children
  attr_accessor :suffix_link
  attr_accessor :suffix_index
  attr_accessor :start_index
  attr_accessor :end_index
  attr_accessor :split_end

  def initialize(start_index, end_index = nil, split_end = nil, root_node = nil)
    @children = Array.new(27)
    @suffix_link = root_node
    @start_index = start_index
    @suffix_index = -1
    @end_index = end_index
    @split_end = split_end
  end
end

class CreateSuffixArrayWithTree
  attr_reader :string

  attr_accessor :active_node
  attr_accessor :active_edge
  attr_accessor :active_length
  attr_accessor :last_new_node
  attr_accessor :remaining_suffixes
  attr_accessor :root

  @@end_index = -1

  def initialize(string)
    @string = string + '@'
    @active_edge = -1
    @active_length = 0
    @remaining_suffixes = 0
    @root = SuffixTreeNode.new(-1, -1, -1)
    @active_node = root
  end

  def create
    string.length.times { |i| add_to_suffix_tree(i) }
    build_suffix_array
  end

  def calculate_edge_length(node)
    (node.split_end || @@end_index) - node.start_index + 1
  end

  def walk_down(node)
    edge_length = calculate_edge_length(node)

    if @active_length >= edge_length
      @active_edge += edge_length
      @active_length -= edge_length
      @active_node = node
      true
    else
      false
    end
  end

  def add_to_suffix_tree(position)
    @@end_index = position
    @remaining_suffixes += 1
    @last_new_node = nil

    while @remaining_suffixes > 0 do
      @active_edge = position if @active_length == 0

      if @active_node.children[string[@active_edge].ord % 64].nil?
        new_node = SuffixTreeNode.new(
          position,
          @@end_index,
          nil,
          @root
        )
        @active_node.children[string[@active_edge].ord % 64] = new_node
        if @last_new_node
          @last_new_node.suffix_link = @active_node
          @last_new_node = nil          
        end
      else
        next_node = @active_node.children[string[@active_edge].ord % 64]
        next if walk_down(next_node)
        if string[next_node.start_index + @active_length] == string[position]
          if @last_new_node && @active_node != @root
            @last_new_node.suffix_link = @active_node
            @last_new_node = nil
          end
          @active_length += 1
          break
        end

        split_end = next_node.start_index + @active_length - 1
        split_node = SuffixTreeNode.new(
          next_node.start_index,
          nil,
          split_end,
          @root
        )
        @active_node.children[string[@active_edge].ord % 64] = split_node
        split_node.children[string[position].ord % 64] = SuffixTreeNode.new(
          position,
          @@end_index,
          nil,
          @root
        )
        next_node.start_index += @active_length
        split_node.children[string[next_node.start_index].ord % 64] = next_node
        @last_new_node.suffix_link = split_node if @last_new_node
        @last_new_node = split_node
      end

      @remaining_suffixes -= 1

      if @active_node == @root && @active_length > 0
        @active_length -= 1
        @active_edge = position - @remaining_suffixes + 1
      elsif @active_node != @root
        @active_node = @active_node.suffix_link
      end
    end
  end

  def build_suffix_array
    array = []
    list = []

    # initial list of nodes
    root.children.each do |child|
      if child
        edge_length = calculate_edge_length(child)
        list.push([child, edge_length])
      end
    end

    while tree_node = list.shift do
      leaf = 1
      node = tree_node[0]
      height = tree_node[1]

      if node.children.length > 0
        length = node.children.length
        i = length - 1
        nodes_to_traverse = []
        while i >= 0 do
          child = node.children[i]
          if child
            if leaf == 1  && node.suffix_index != -1
              array.push(node.suffix_index)
            end
            leaf = 0
            edge_length = calculate_edge_length(child)
            nodes_to_traverse.unshift([child, height + edge_length])  
          end
          i -= 1
        end
        list.unshift(*nodes_to_traverse)
      end

      if leaf == 1
        node.suffix_index = string.length - height
        array.push(node.suffix_index) if node.suffix_index != -1
      end
    end

    array
  end

  def char_to_children
    @char_to_children ||= Hash[('@'..'Z').to_a.map { |e| [e, e.ord % 64] }]
  end
end

gets.to_i.times do
  a = gets.strip
  b = gets.strip
  s = b + a
  i = 0
  j = 0
  k = 0
  z = 0
  output = Array.new(s.length)
  suffix_array = CreateInvertedSuffixArray.from(s)

  while k < s.length && i < a.length && j < b.length do
    if suffix_array[b.length + i] < suffix_array[j]
      output[z] = a[i]
      z += 1
      i += 1
    else
      output[z] = b[j]
      z += 1
      j += 1
    end
    k += 1
  end

  while i < a.length do
    output[z] = a[i]
    z += 1
    i += 1
  end

  while j < b.length do
    output[z] = b[j]
    z += 1
    j += 1
  end

  puts output.join
end
