def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  return input - 1
end

def valid_move?(board, index)
  if index >= 9 || index <= -1
    return false
  elsif board[index] == "X" || board[index] == "O"
    return false
  else
    return true
  end
end

def move(board, index, player)
  if valid_move?(board, index) == true
    board[index] = player
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    board[index] = "X"
    display_board(board)
  else
  turn(board)
end
end
