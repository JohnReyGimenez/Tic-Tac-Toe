class Game
  def initialiaze
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
 
  def play(board)
    until counter == 9
      counter += 1
    if counter == 9 
      puts "its a draw!"
    end 

  def won?(winning_combination, board)
    winning_combination.each do |subarray|
      if subarray.all? {|index| board[index]}
        return true
      end
    end
    false
  end
end

# The game has 2 tokens which are X and O
# In the first turn the X token is used
# the board is defined by a 2d array which 
# each element will represent a cell in the board
# there are 8 winning conditions to be defined
# to define a win we need to check if the specific indices
# correlates to the winning combination
# if there are no winning condition then its a tie/draw or when it reaches 9 turns