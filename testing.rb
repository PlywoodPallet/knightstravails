require './lib/board.rb'
require './lib/knight.rb'


a_knight = Knight.new
test_board = Board.new

test_board.add_piece(a_knight)

p test_board


# all possible knight moves on (x,y) grid - relative move to starting position
# (-2, -1), (-1, 2), (1, 2), (2, 1), (2, -1), (1, -2), (-1, -2), (-2, -1)