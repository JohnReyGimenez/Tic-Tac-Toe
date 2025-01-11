class Board 
  def initialiaze
    @board = Array.new(8, "") #create a board with 9 nil elements
  end
  
  def display_instructions
    puts "Shown below are the coordinates of the cells where you will put your tokens"
    puts "to put your token(X/O) in a cell simply type the number where you wanna put it"
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "
    puts "Type y if you want to start"
  end

  def display_board(board)
    puts "  #{board[0]} |  #{board[1]} |  #{board[2]}"
    puts "-----------"
    puts "  #{board[3]} |  #{board[4]} |  #{board[5]}"
    puts "-----------"
    puts "  #{board[6]} |  #{board[7]} |  #{board[8]}"
  end
  
 
end

puts "Shown below are the coordinates of the cells where you will put your tokens"
puts "to put your token(X/O) in a cell simply type the number where you wanna put it"
puts " 1 | 2 | 3 "
puts "-----------"
puts " 4 | 5 | 6 "
puts "-----------"
puts " 7 | 8 | 9 "
puts "Type y if you want to start"