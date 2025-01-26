class Game
  def initialize
    @winning_combination = [
      [0,1,2], #top row
      [3,4,5], #middle row
      [6,7,8], #bottom row 
      [0,3,6], #1st column
      [1,4,7], #2nd column
      [2,5,8], #3rd column
      [0,4,7], #left diagonal
      [2,4,6], #right diagonal
    ]
  end

  def input_to_index(user_input)
    user_input.to_i - 1 
  end
  
  def play_game(board)
    current_player = "X"
    loop do
      board.display_board
      puts "#{current_player}, choose a position (1-9)"
      user_input = gets.strip
      index = input_to_index(user_input)
    
      if board.valid_move?(index)
        board.update_board(index, current_player)

        winner = won?(board.board_state)
        if winner
          board.display_board
          puts "#{winner}, Wins!"
        break
        elsif board.full?
          board.display_board
          puts "its a draw!"
        break
      end
        current_player = switch_player(current_player)
      else 
      puts "that position is already taken or invalid, try again."
      end
    end
  end 

  def won?(board)
    @winning_combination.each do |subarray|
      if subarray.all? {|index| board.board_state[index] == "X"}
        return "X"
      elsif subarray.all? {|index| board.board_state[index] == "O"}
        return "O"
      end
    end
    false
  end
  
 

  def draw?(board)
    if !won?(board) && full?(board)
      return true
    elsif !won?(board) && !full?(board)
      return false
    else won?(board)
      return false
    end
  end

  def over?(board)
    if draw?(board) || won?(board) || full?(board)
      return true
    end
  end

  def switch_player(current_player)
    current_player == "X" ? "O" : "X"
  end
end

