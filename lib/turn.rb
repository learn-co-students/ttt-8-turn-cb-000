def turn(board)
  puts "Please enter 1-9:"
input = gets.chomp.to_i
index = input_to_index(input)
 if valid_move?(board, index)
   move(board, index)
   display_board(board)
else
  puts " Please pick a number 1-9, try again."
  input = gets.chomp.to_i
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if position_taken?(board, index) == false && index.between?(0, 8) == true
  return true
else false
end
end

def position_taken?(board, index)
board[index] == " " && board[index] == ""
board[index] == "X" || board[index] == "O"
end

def move(board, index, character = "X")
board[index] = character
end

def input_to_index(input)
input.to_i - 1
end

##Hint: While not explicitly required by this lab, you might want to encapsulate the logic to check if a position is occupied in its own method, perhaps `#position_taken?`**
