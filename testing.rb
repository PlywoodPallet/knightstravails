require './lib/board.rb'
require './lib/knight.rb'
require './lib/tree.rb'


# a_knight = Knight.new
# test_board = Board.new

# test_board.add_piece(a_knight, 0, 0)

# test_board.knight_moves(a_knight, [0,0], [1,2])

# a_treenode = TreeNode.new("test")
# puts a_treenode

a_tree = Tree.new("root")
a_tree.root.add_child(TreeNode.new("child1"))
a_tree.root.add_child(TreeNode.new("child2"))
a_tree.root.add_child(TreeNode.new("child3"))
a_tree.root.add_child(TreeNode.new("child4"))

puts a_tree.return_leafs

# a_graph = Graph.new
# p a_graph
