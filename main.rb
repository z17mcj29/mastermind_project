require_relative 'lib/game_logic'
require_relative 'lib/communications'
require_relative 'lib/game_board'

gl = GameLogic.new
comm = Communication.new
gb = GameBoard.new
main_board = gb.new_board
peg_board = gb.new_board.map do |item|
  item.map { |element| "*"}
end


comm.explain_rules
comm.explain_controls



gb.update_board(main_board, peg_board)