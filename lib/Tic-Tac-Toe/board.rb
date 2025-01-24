class Board 
  def initialize
    @board = Array.new(9, " ") #create a board with 9 nil elements
  end
  
  def display_instructions

  instructions = <<-HEREDOC 
     Shown below are the coordinates of the cells where you will put your tokens
     to put your token(X/O) in a cell simply type the number where you wanna put it
      1 | 2 | 3 
     -----------
      4 | 5 | 6 
     -----------
      7 | 8 | 9 
     Type y if you want to start
HEREDOC
    puts instructions
    start = gets.chomp
    if start != 'y'
      puts "game exited"
    end

  end

  def display_board(board)
    puts "  #{@board[0]} |  #{@board[1]} |  #{@board[2]}"
    puts "-----------"
    puts "  #{@board[3]} |  #{@board[4]} |  #{@board[5]}"
    puts "-----------"
    puts "  #{@board[6]} |  #{@board[7]} |  #{@board[8]}"
  end
  
  def update_board(index, token)
    board[index] = token
  end
end
