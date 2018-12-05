def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && tile_empty?(board, index)
    return true
  else return false
  end
end

def tile_empty?(board, index)
    return board[index] != "X" && board[index] != "O" ? true : false
  end


def move(board, index, token="X")
    board[index] = token
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip.to_i)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip.to_i)
  end
  move(board, index)
  display_board(board)
end
