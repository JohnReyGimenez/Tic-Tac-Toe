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
  
  def play_game(board)
    until counter == 9
      turn(board)
      puts "#{current_player}, choose a position (1-9)"
    end
    if won?(board)
      winner(board) == "X" || winner(board) == "O"
      puts "#{winner(board)} wins!"
    elsif draw?(board)
      puts "its a draw!"
    end
  end 

  def turn(board)
    puts "Enter 1-9"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index, current_player(board))
      turn(board)
    end
    display_board(board)
  end

  def won?(winning_combination, board)
    winning_combination.each do |subarray|
      if subarray.all? {|index| board[index]}
        return true
      end
    end
    false
  end
  
  def full?(board)
    board.all? {|i| i == "X" || i == "O"}
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
end

