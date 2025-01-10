class Board 
  def initialiaze
   
  end
 
end

arr = Array.new(9, "")
arr = arr.slice(0, 3)
p arr
for a in 1..3 do
  arr = arr.slice(0, 3)
end
p arr
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
