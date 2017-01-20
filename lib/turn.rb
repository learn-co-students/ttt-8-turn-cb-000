def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your input_to_index and move method here!

def input_to_index(user_input)
  user_integer = user_input.to_i
  user_integer -= 1
end


def move(board, position, char = "X")
  board[position] = char
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0, 8)
    return true
  end
end


 def position_taken?(board, index)
   if (board[index] == "" || board[index]== " " || board[index]== nil)
     return false
   elsif (board[index] == "X" || board[index]== "O")
     return true
   else
     return true
   end
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
   puts "That was not a valid move. Try again."
   turn(board)
end
end
