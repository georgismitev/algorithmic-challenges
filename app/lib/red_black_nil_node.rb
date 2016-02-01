require 'singleton'
require_relative 'red_black_tree_node'

class RedBlackNilNode < RedBlackTreeNode
  include Singleton

  def initialize
    @color = :black
    @value = nil
    @left = nil
    @right = nil
    @parent = nil
  end

  def black?
    true
  end

  def red?
    false
  end

  def nil?
    true
  end
end
