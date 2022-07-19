class TreeNode

  attr_accessor :value, :children

  def initialize (value = nil)
    @value = value
    @children = []
  end

  def add_child(node)
    @children << node
  end

end

# An open-ended tree. One node can have more than two children. 
class Tree

  attr_accessor :root
  
  def initialize(start_array)
    @root = TreeNode.new(start_array)
  end

  # return all the leafs
  def return_leafs

  end

end