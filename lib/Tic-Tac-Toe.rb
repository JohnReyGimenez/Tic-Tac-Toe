require_relative 'Tic-Tac-Toe/board'
require_relative 'Tic-Tac-Toe/game'
require_relative 'Tic-Tac-Toe/player'

board = board.new
game = game.new
board.display_instructions
game.play_game(board)