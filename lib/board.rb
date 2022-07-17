class Board

attr_accessor :grid

def initialize
  @grid = Array.new(8){Array.new(8)} # initialize an 8x8 chess grid by default
end

# add a piece to the board, in position [0][0] by default
def add_piece(piece, x = 0, y = 0)
  @grid[x][y] = piece
end

end