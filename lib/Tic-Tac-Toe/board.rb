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
    start = gets.chomp.downcase
    if start != 'y'
      puts "game exited"
      exit 
    end

  end

  def display_board
    puts "   #{@board[0] || ''} | #{@board[1] || ''} | #{@board[2] || ''}"
    puts "   ---------"
    puts "   #{@board[3] || ''} | #{@board[4] || ''} | #{@board[5] || ''}"
    puts "   ---------"
    puts "   #{@board[6] || ''} | #{@board[7] || ''} | #{@board[8] || ''}"
  end
  
  def update_board(index, token) # Updates board after input
    @board[index] = token
  end

  def valid_move?(index) # Checks if move is valid
    index.between?(0, 8) && @board[index] == " "
  end


  def full? # Checks if board is full
    @board.all? {|cell| cell == "X" || cell == "O"}
  end

  def board_state #Getter method
    @board
  end
end
