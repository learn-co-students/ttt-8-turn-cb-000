def turn(board)
puts "Please enter 1-9:"
user_input=gets.strip
index = input_to_index(user_input)
if valid_move?(board,index) == true
move(board,index)
display_board(board)
else turn(board)
end
end

# code your #valid_move? method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input=user_input.to_i - 1
end

def move(board,converted_input,value="X")
  board[converted_input] = value
end

def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
return true
else
return false
end
end




#re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end
