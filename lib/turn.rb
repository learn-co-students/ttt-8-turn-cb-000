def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  position = user_input.to_i - 1
end

def valid_move?(board, position)
  moves = board[position] == "X" || board[position] == "O"
  if position.between?(0, 8) && !moves
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  integer_change = input_to_index(input)
  if valid_move?(board, integer_change)
    move(board, integer_change)
    display_board(board)
  else
    turn(board)
  end
end
