class Board 

  def initialiaze
    @rows = 7
    @columns = 7
    @board = []



  end
 
end

arr = Array.new(9, [])
board = arr.each_slice(3){|cell| p cell}



#  make a 2d nested array that acts as the board
#  each element in array has an array in it which contains
#  [, blank, ] 
#  
# 
# 
# 