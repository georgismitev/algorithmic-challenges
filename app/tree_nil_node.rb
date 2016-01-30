require 'singleton'

class TreeNilNode < TreeNode
  include Singleton

  def initialize
    @value = @left = @right = @parent = nil
  end

  def nil?
    true
  end
end
