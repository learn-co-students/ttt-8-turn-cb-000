# display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Input
  def input_to_index(user_input)
    user_input.to_i - 1
  end
#move
def move(board, input_to_index, x = "X")

 board[input_to_index] = x

end

# valid move

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    return true
  else
   return false
  end
end


 #position taken
def position_taken?(board, index)
  if board[index] == "  "
  else board[index] == "X" || board[index] == "O"
  end
end



def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
   move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
