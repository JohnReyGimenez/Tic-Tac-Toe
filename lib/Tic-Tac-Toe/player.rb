class Player
  attr_reader :token
  def initialize
    @token = token
  end

  def move (board, index, player)
    board[index] = player
  end

  def position_taken?(board, index)
    board[index] != " "
  end
    
  def turn_count(board) 
    board.count {|space| space == "X"|| space == "O"}
  end

  def current_turn(board)
    turn_count(board).even? ? "X" : "O"
  end

  def switch_player(current_player)
    current_player == "X" ? "O" : "X"
  end
end

