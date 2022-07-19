require './lib/board.rb'
require './lib/knight.rb'
require './lib/tree.rb'


# a_knight = Knight.new
# test_board = Board.new

# test_board.add_piece(a_knight, 0, 0)

# moves_tree = test_board.all_possible_knight_moves([0,0], [1,2])
# moves_tree.print

root = TreeNode.new("*root*") do
  add "Battle" do
    add "Attack" do
      add "Shake the sword"
      add "Attack magic" do
        add "Summoned Beast X"
        add "Summoned Beast Y"
      end
      add "Repel sword in length"
    end
    add "Defense"
  end
  add "Withdraw" do
    add "To stop" do
      add "Place a trap"
      add "Shoot a bow and arrow"
    end
    add "To escape"
  end
  add "Break" do
    add "Stop"
    add "Recover" do
      add "Recovery magic"
      add "Drink recovery medicine"
    end
  end
end

puts TreeSupport.tree(root)