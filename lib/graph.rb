class GraphNode

  attr_accessor :value, :neighbors

  def initialize (value = nil)
    @value = value
    @neighbors = []
  end

  def add_edge(node)
    @neighbors << node
  end

end

# A tree-like graph
class Graph

  attr_accessor :root
  
  def initialize(start_array)
    @root = GraphNode.new(start_array)
  end

  # return all the leafs
  def return_leafs

  end

end