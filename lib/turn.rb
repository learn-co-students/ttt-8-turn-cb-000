def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  i_to_i = input_to_index(user_input)
  if valid_move?(board, i_to_i)
    puts "valid move"
    move(board, i_to_i, token = "X")
    display_board(board)
  else
    turn(board)
  end
end

#Helper methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  end
  if index.between?(0, 8)
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || "" || nil
    return false
  end
end

def move(board, position, token = "X")
  board[position] = token
end
