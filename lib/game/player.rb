class Player
  def initialiaze
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
    if (board.between(0,8)) && !position_taken(board, index)\
      return true
  end
end


# minus the number the user has inputted by 1
# 
# 
# 
# if all elements in the board array is used its a tie
# 
