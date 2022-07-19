class TreeNode

  # attr_accessor :value, :children

  # def initialize (value = nil)
  #   @value = value
  #   @children = []
  # end

  # def add_child(node)
  #   @children << node
  # end

  # def haschildren?
  #   @children.length.positive?
  # end

  # def to_s
  #   "[#{@value}, children: #{@children}]"
  # end

    attr_accessor :name, :parent, :children

  def initialize(name = nil, &block)
    @name = name
    @children = []
    if block_given?
      instance_eval(&block)
    end
  end

  def add(*args, &block)
    tap do
      children << self.class.new(*args, &block).tap { |v| v.parent = self }
    end
  end

end

require "tree_support"

# An open-ended (non-binary) tree. One node can have more than two children 
class Tree

  attr_accessor :root
  
  def initialize(start_location = nil)
    @root = TreeNode.new(start_location)
  end

  # return array of all leaf nodes (nodes with no children)
  def return_leafs

    leafs_array = []
    node_queue = []
    node_queue << @root # initial node to examine

    until node_queue.length.zero?
      node = node_queue.shift

      # if the node has children, add its children into the queue
      if node.haschildren?
        node_queue.concat(node.children)
      # if no children, add to the output array
      else
        leafs_array.push(node)
      end
    end

    leafs_array
  end

  def print
    puts TreeSupport.tree(@root)
  end

end