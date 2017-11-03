def turn(board)
  puts "Please enter 1-9:"
  move = gets.chomp
  index = input_to_index(move)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid move. Please try again."
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && board[index] != "X" && board[index] != "O"
    return true
  end
  false
end

def move(board, index, token="X")
  board[index] = token
end

def input_to_index(input)
  num =input.to_i
  return num -= 1
end
