require_relative 'lib/game_logic'

gl = GameLogic.new

actor = true
actor = gl.choose_player_or_computer(actor)

puts actor

