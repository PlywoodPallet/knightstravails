class Board

attr_accessor :grid

def initialize
  @grid = Array.new(8){Array.new(8)} # initialize an 8x8 chess grid by default
end

# add a piece to the board, in position [0][0] by default
def add_piece(piece, x = 0, y = 0)
  @grid[x][y] = piece
end

# added knight moves to the Board class, but it might need to be moved. Does the Board class move a chess piece, or does the piece move itself?

# all possible knight moves on (x,y) grid - relative move to starting position
# (-2, -1), (-1, 2), (1, 2), (2, 1), (2, -1), (1, -2), (-1, -2), (-2, -1)
def knight_moves (start, finish)

end

end