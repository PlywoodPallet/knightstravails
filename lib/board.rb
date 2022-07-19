require './lib/knight.rb'
require './lib/tree.rb'

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

  end

  # possible moves
  def all_possible_knight_moves (start, finish)
    # all the possible moves for one player turn (x,y grid)
    possible_moves_array = [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1]]

    moves_tree = Tree.new(start)

    final_move_found = false

    # until final_move_found

      leaf_nodes = moves_tree.return_leafs

      
      leaf_nodes.each do |leaf_node|
        possible_moves_array.each do |coord|
          # local start and finish, for the move only
          local_start_x = leaf_node.value[0]
          local_start_y = leaf_node.value[1]

          coord_x = coord[0]
          coord_y = coord[1]

          local_finish_x = local_start_x + coord_x
          local_finish_y = local_start_y + coord_y

          # check if move is off the board: skip if the resulting coordinates are negative
          if (local_finish_x < 0 || local_finish_y < 0)
            next
          # check if move is off the board: skip if the resulting coordinates are greater than the board size. Assuming board is square
          elsif (local_finish_x > @grid.length || local_finish_y > @grid.length)
            next
          # of checks are passed, add this valid possible move to moves_tree
          else
            local_finish_array = [local_finish_x, local_finish_y]

            # check if the last move has been found
            if (local_finish_array == finish)
              final_move_found = true
            end

            leaf_node.add_child(TreeNode.new(local_finish_array))
          end
        end
      end
    # end

    moves_tree
  end

end