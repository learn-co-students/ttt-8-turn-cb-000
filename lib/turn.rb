def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  return input -1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && !position_taken(board, index)
    return true
  else
    return false
  end
end

def position_taken(board, index)
  if board[index] == "" || board[index] == " "
    return false
  else
    return true
  end
end

def move(board, index, player)
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, 'X')
    display_board(board)
  else
    display_board(board)
    turn(board)
  end
end
