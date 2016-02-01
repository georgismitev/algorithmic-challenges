class BstTree < Tree
  def add(value, node = root)
    if empty?
      self.root = TreeNode.new(value)
      self.size += 1
    else
      if value > node.value 
        unless node.right.nil?
          add(value, node.right)
        else
          node.right = TreeNode.new(value, node)
          self.size += 1
        end
      else
        unless node.left.nil?
          add(value, node.left)
        else
          node.left = TreeNode.new(value, node)
          self.size += 1
        end
      end
    end
  end

  def find_node(value, node = root)
    if value == node.value
      node
    else
      if value > node.value
        unless node.right.nil?
          find_node(value, node.right)
        else
          nil
        end
      else
        unless node.left.nil?
          find_node(value, node.left)
        else
          nil
        end
      end
    end
  end

  private

  def empty?
    size == 0
  end
end
