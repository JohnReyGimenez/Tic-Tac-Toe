class Board 

  def initialiaze
    @board = Array.new(8, "") #create a board with 9 nil elements
  end
  
  def display_board(board)
    puts "#{board[0]} | #{board[1]} | #{board[2]}"
    puts "------------"
    puts "#{board[3]} | #{board[4]} | #{board[5]}"
    puts "------------"
    puts "------------"
    puts "#{board[6]} | #{board[7]} | #{board[8]}"
  end

end


#  make a 2d nested array that acts as the board
#  each element in array has an array in it which contains
#  [, blank, ] 


#      
# 1 [[ ], [ ], [ ]]
# 2 [[ ], [ ], [ ]]
# 3 [[ ], [ ], [ ]]
#     A    B    C
# 
# The game has 2 tokens which are X and O
# In the first turn the X token is used
# the board is defined by a 2d array which 
# each element will represent a cell in the board
# there are 8 winning conditions to be defined
# to define a win we need to check if the specific indices
# correlates to the winning combination
# if there are no winning condition then its a tie/draw
