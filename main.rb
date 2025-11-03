require_relative 'lib/game_logic'
require_relative 'lib/communications'
require_relative 'lib/game_board'

gl = GameLogic.new
comm = Communication.new
gb = GameBoard.new
main_board = gb.new_board
source_board = ["O", "D", "T", "A"] # Hard coded for now. Will need to make a random generator for this
peg_board = gb.new_board.map do |item|
  item.map { |element| "*"}
end
i = 0

#Game Opening. Explain Rules, Controls, and show an empty board
comm.explain_rules
comm.explain_controls
gb.update_board(main_board, peg_board)
#Player starts to make choices
comm.show_choices
gl.choose_colors(main_board, i)
gl.update_pegs(main_board, source_board, peg_board, i)
gb.update_board(main_board, peg_board)

