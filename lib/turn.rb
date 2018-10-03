def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  converted_input = input_to_index(input)
  if valid_move?(board, converted_input) == false
    turn(board)
  end
  move(board, converted_input)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  return converted_input
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && board[index] == " "
    return true
  else
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end
