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
  
  def initialize
    @root = GraphNode.new("root")
  end

end