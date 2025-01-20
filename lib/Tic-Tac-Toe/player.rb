class Player
  def initialize
    @counter = 0
  end

  def input_to_index(user_input)
    user_input.to_i - 1 
  end

  def move (board, index, player)
    board[index] = player
  end

  def position_taken?(board, index)
    if (board[index] == "") || (board[index] == '') || (board[index] == nil )
      return true
    else 
      return false
    end

  def valid_move?(board, index)
    if (board.between(0,8)) && !position_taken(board, index)
      return true
  end

  def turn_count(board) 
    board.count {|space| space == "X"|| space == "O"}
  end

  def current_turn(board)
    turn_count(board).even? ? "X" : "O"
  end
end


# minus the number the user has inputted by 1
# 
# 
# 
# if all elements in the board array is used its a tie
# 
