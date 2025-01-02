class Board 

  def initialiaze
    @rows = 7
    @columns = 7
    @board = []



  end
 
end
arr = [[, ,]...[, ,]]
arr.each_slice(6).to_a
arr.each_with_object([]){|value,items|items.push(value)}
#  make a 2d nested array that acts as the board
#  each element in array has an array in it which contains
#  [, blank, ] 
# 
# 
# 
# 