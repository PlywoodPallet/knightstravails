require './lib/board.rb'
require './lib/knight.rb'
require './lib/tree.rb'


a_knight = Knight.new
test_board = Board.new

test_board.add_piece(a_knight, 0, 0)

test_board.knight_moves(a_knight, [0,0], [1,2])



# a_graph = Graph.new
# p a_graph
