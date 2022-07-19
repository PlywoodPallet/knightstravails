require './lib/board.rb'
require './lib/knight.rb'
require './lib/tree.rb'


a_knight = Knight.new
test_board = Board.new

test_board.add_piece(a_knight, 0, 0)

moves_tree = test_board.all_possible_knight_moves([0,0], [1,2])
moves_tree.print
