require_relative 'lib/game_logic'
require_relative 'lib/communications'
require_relative 'lib/game_board'

gl = GameLogic.new
comm = Communication.new
gb = GameBoard.new
main_board = gb.new_board
source_board = []
gl.randomize_source(source_board) #I'm sure there is a more efficient way to do this in one line instead of two.
peg_board = gb.new_board.map do |item|
  item.map { |element| "*"}
end
i = 0

#Game Opening. Explain Rules, Controls, and show an empty board
comm.explain_rules
comm.explain_controls
gb.update_board(main_board, peg_board)
#Player starts to make choices
loop do
  #i = 0
  comm.show_choices
  gl.choose_colors(main_board, i)
  gl.update_pegs(main_board, source_board, peg_board, i)
  gb.update_board(main_board, peg_board)
  break puts "You win!" if gl.check_game_win(source_board, peg_board, i)
  break puts "You lose! solution was #{source_board}" if gl.check_game_lose(i)
  i += 1   
end


