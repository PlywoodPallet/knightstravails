require './lib/knight.rb'
require './lib/graph.rb'

class Board

attr_accessor :grid

def initialize
  @grid = Array.new(8){Array.new(8)} # initialize empty 8x8 chess grid
end

# add a piece to the board, in position [0][0] by default
def add_piece(piece, x, y)
  @grid[x][y] = piece
end

# added knight moves to the Board class, but it might need to be moved. Does the Board class move a chess piece, or does the piece move itself? (thinking ahead for future chess project)

# all possible knight moves on (x,y) grid - relative move to starting position
# (-2, -1), (-1, 2), (1, 2), (2, 1), (2, -1), (1, -2), (-1, -2), (-2, -1)

# if after hypothetical move, the resulting index is negative (x or y), delete the node because the move is off the board

# test input. Start = [0,0], finish = [1,2]

def knight_moves (piece, start, finish)

  # all the possible moves for one player turn (x,y grid)
  possible_moves_array = [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1]]

  moves_graph = Graph.new(start)

  possible_moves_array.each do |coord|
    start_x = start[0]
    start_y = start[1]

    coord_x = coord[0]
    coord_y = coord[1]

    finish_x = start_x + coord_x
    finish_y = start_y + coord_y

    # check if move is off the board: skip if the resulting coordinates are negative
    if (finish_x < 0 || finish_y < 0)
      next
    # check if move is off the board: skip if the resulting coordinates are greater than the board size. Assuming board is square
    elsif (finish_x > @grid.length || finish_y > @grid.length)
      next
    # of checks are passed, add this valid possible move to moves_graph
    else
      finish_array = [finish_x, finish_y]

      moves_graph.root.add_edge(GraphNode.new(finish_array))
    end



  end

  p moves_graph




end

end