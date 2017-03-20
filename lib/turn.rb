board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
puts  "-----------"
puts  " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
puts  "-----------"
puts  " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def input_to_index(x)
  i = x.to_i - 1
end

def move(board, i, x = "X")
  board[i] = x
end

def position_taken?(board, i)
if board[i] == "X" || board[i] == "O"
  return true
elsif board[i] == " "
   return false
 elsif board[i] == ""
   return false
 else board[i] == nil
   return false
  end
 end
 def valid_move?(board, x)
   if position_taken?(board, x) == false && x.between?(0, 8)
     return true
   else
     return false
   end
 end

def turn(board)
  puts "Please enter 1-9:"
  x = gets.strip
  i = input_to_index(x)
  m = valid_move?(board, i)
 if m == false
   gets.strip
 else
   move(board, i, x = "X")
  end
display_board(board)  
end