require_relative 'lib/game_logic'

source_board = []
GameLogic.new.randomize_source(source_board)
print source_board