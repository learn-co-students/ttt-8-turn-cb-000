def display_board(board)
  puts [" #{board[0]} ""|"" #{board[1]} ""|"" #{board[2]} "]
  puts ["-----------"]
  puts [" #{board[3]} ""|"" #{board[4]} ""|"" #{board[5]} "]
  puts ["-----------"]
  puts [" #{board[6]} ""|"" #{board[7]} ""|"" #{board[8]} "]
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def valid_move?(board, index)
  if index == nil || index < 0 || index > 8
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def input_to_index(user_input)
  s = user_input.to_i
  s - 1
end

def move(array, index, character = "X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  s = user_input.to_i
  index = s - 1
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end

