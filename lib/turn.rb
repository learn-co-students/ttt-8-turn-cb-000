def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input
  index = index.to_i
  index = index - 1
  return index
end

def position_taken?(board,index)
if board[index] == ""
  return false
elsif board[index] == " "
  return false
elsif board[index] == nil
  return false
else
  return true
 end
end

def valid_move?(board,index)
  if index.between?(0,8)== true &&  position_taken?(board,index)== false
    return true
  else
    return false
  end
end

def move(board,index,value = "X")
    board[index]=value
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  a=input_to_index(user_input)
  if valid_move?(board,a) == true
   move(board,a,value = "X")
   display_board(board)
 else
    print "Please enter 1-9:"
    user_input = gets.strip
 end
end
