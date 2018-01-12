def display_board(board)
  puts "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  user_input = Integer(input) rescue false
  if user_input
    user_input = user_input - 1
    return user_input
  else
    return - 1
  end
end

def position_taken?(board, index)
  case board[index]
  when "X"
    return false
  when "O"
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if index >= 0 and index <= 8
    if position_taken?(board, index)
      return true
    end
  end
  return false
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  user_input = input_to_index(input)
  if valid_move?(board, user_input)
    move(board, user_input)
    display_board(board)
    return
  end
  turn(board)
end
