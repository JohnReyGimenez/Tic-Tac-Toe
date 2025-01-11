class Player
  def initialiaze
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move (board, index, player)
    board[index] = player
  end

  
end


# minus the number the user has inputted by 1
# 
# 
# 
# if all elements in the board array is used its a tie
# 
