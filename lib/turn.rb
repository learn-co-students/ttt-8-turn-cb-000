def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character = 'X')
  board[index] = character
end

def input_to_index(input_to_index)
  input_to_index.to_i - 1
end

def valid_move?(board, index)
  if board[index] == 'X' || board[index] == 'O'
    return false
  elsif index >=0 && index <=8
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
