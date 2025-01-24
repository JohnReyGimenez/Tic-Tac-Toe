class Player
  def initialize
    @token = token
  end

  def make_move

  end
  
  def input_to_index(user_input)
    user_input.to_i - 1 
  end

  def move (board, index, player)
    board[index] = player
  end

  def position_taken?(board, index)
    if (board[index] == " ")
      return true
    end
    return false
  end

  def valid_move?(board, index)
    if (board.between?(0, 8)) && !position_taken(board, index)
      return true
    end
  end

  def input_to_index(user_input)
    user_input.to_i - 1 
  end
    
  def move (board, index, player)
    board[index] = player
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

