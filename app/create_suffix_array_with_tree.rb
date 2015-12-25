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
    @string = string + '$'
    @active_edge = -1
    @active_length = 0
    @remaining_suffixes = 0
    @root = SuffixTreeNode.new(-1, -1, -1)
    @active_node = root
  end

  def create
    string.size.times { |i| add_to_suffix_tree(i) }
    build_suffix_array.reject { |e| e == - 1 }[1..-1]
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

      unless @active_node.children.include?(string[@active_edge])
      # if @active_node.children[string[@active_edge].ord].nil?
        new_node = SuffixTreeNode.new(
          position,
          @@end_index,
          nil,
          @root
        )
        @active_node.children.add(string[@active_edge])
        @active_node.children_data[string[@active_edge]] = new_node
        if @last_new_node
          @last_new_node.suffix_link = @active_node
          @last_new_node = nil          
        end
      else
        next_node = @active_node.children_data[string[@active_edge]]
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
        @active_node.children_data[string[@active_edge]] = split_node
        split_node.children.add(string[position])
        split_node.children_data[string[position]] = SuffixTreeNode.new(
          position,
          @@end_index,
          nil,
          @root
        )
        next_node.start_index += @active_length
        split_node.children.add(string[next_node.start_index])
        split_node.children_data[string[next_node.start_index]] = next_node
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
    root.children.each do |child|
      node = root.children_data[child]
      edge_length = calculate_edge_length(node)
      list.push([node, edge_length])
    end

    while tree_node = list.shift do
      leaf = 1
      node = tree_node[0]
      height = tree_node[1]

      if node.children.size > 0
        i = node.children.to_a.size - 1
        while i >= 0 do
        # node.children.to_a.reverse.each do |child|
          child = node.children.to_a[i]
          if leaf == 1
            # puts "with children [#{node.start_index}, #{node.end_index || node.split_end}]"
            array.push(node.suffix_index)
          end
          leaf = 0
          edge_length = calculate_edge_length(node.children_data[child])
          list.unshift([node.children_data[child], height + edge_length])
          i -= 1
        end
      else
        node.suffix_index = string.size - height
        array.push(node.suffix_index)
      end
    end

    array
  end
end
