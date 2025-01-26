require_relative 'Tic-Tac-Toe/board'
require_relative 'Tic-Tac-Toe/game'

board = Board.new
game = Game.new
board.display_instructions
game.play_game(board)