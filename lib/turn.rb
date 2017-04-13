def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input_int = user_input.to_i
  user_input_int -= 1
  return user_input_int
end

def valid_move?(board, index)
  if index < 0 || index > 9
    false
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false
  end
end

def move(board, position, letter = "X")
  board[position] = letter
end

def turn(board)
  puts "Please enter 1-9:"
  user_response = gets.strip

  user_move = input_to_index(user_response)

  if valid_move?(board, user_move)
    move(board, user_move)
  else
    turn(board)
  end

  display_board(board)
end



