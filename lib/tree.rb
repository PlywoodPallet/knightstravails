class TreeNode

  attr_accessor :value, :children

  def initialize (value = nil)
    @value = value
    @children = []
  end

  def add_child(node)
    @children << node
  end

  def children?
    @children.length.positive?
  end

end

# An open-ended (non-binary) tree. One node can have more than two children 
class Tree

  attr_accessor :root
  
  def initialize(start_array)
    @root = TreeNode.new(start_array)
  end

  # return array of all the leafs (nodes with no children)
  def return_leafs

  end

end