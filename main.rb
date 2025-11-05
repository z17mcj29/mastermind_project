require_relative 'lib/game_logic'
require_relative 'lib/communications'
require_relative 'lib/game_board'
require_relative 'lib/comp_logic'

gl = GameLogic.new
comm = Communication.new
gb = GameBoard.new
cl = ComputerLogic.new
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
comm.choose_player_or_computer
actor = true
actor = gl.choose_player_or_computer(actor)


#turning off player choice while I work on computer logic.
if actor
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
else
  comm.set_code
  source_board = []
  correct_board = [nil, nil, nil, nil]
  gl.select_source_pegs(source_board)
  loop do  
    cl.comp_choose(main_board, correct_board, i)    
    gl.update_pegs(main_board, source_board, peg_board, i)
    cl.correct_choices(source_board, main_board, correct_board, i)
    gb.update_board(main_board, peg_board)
    break puts "computer wins!" if gl.check_game_win(source_board, peg_board, i)
    break puts "Computer loses!" if gl.check_game_lose(i)
    i += 1
  end
end
