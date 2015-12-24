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
    array = []
    print_dfs(root, 0, array)
    array.reject { |e| e == - 1 }[1..-1]
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
      if @active_node.children[string[@active_edge].ord].nil?
        new_node = SuffixTreeNode.new(
          position,
          @@end_index,
          nil,
          @root
        )
        @active_node.children[string[@active_edge].ord] = new_node
        if @last_new_node
          @last_new_node.suffix_link = @active_node
          @last_new_node = nil          
        end
      else
        next_node = @active_node.children[string[@active_edge].ord]
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
        @active_node.children[string[@active_edge].ord] = split_node
        split_node.children[string[position].ord] = SuffixTreeNode.new(
          position,
          @@end_index,
          nil,
          @root
        )
        next_node.start_index += @active_length
        split_node.children[string[next_node.start_index].ord] = next_node
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

  def print_dfs(node, height, array)
    leaf = 1
    non_empty_children = node.children.select { |e| e != nil }
    if non_empty_children.size > 0
      non_empty_children.each do |n|
        array.push(node.suffix_index) if leaf == 1 && node.start_index != -1
        leaf = 0
        edge_length = calculate_edge_length(n)
        print_dfs(n, height + edge_length, array)
      end
    else
      node.suffix_index = string.size - height
      array.push(node.suffix_index)
    end
  end
end
