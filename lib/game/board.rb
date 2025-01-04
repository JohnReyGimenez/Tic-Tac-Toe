class Board 
  def initialiaze
   
  end
 
end

arr = Array.new(9, [ ])
board = arr.each_slice(3)
p board
#  make a 2d nested array that acts as the board
#  each element in array has an array in it which contains
#  [, blank, ] 


#      
# 1 [[ ], [ ], [ ]]
# 2 [[ ], [ ], [ ]]
# 3 [[ ], [ ], [ ]]
#     A    B    C
# 
# 