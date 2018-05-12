
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " "
    true
  elsif board[index] == "X" || board[index] == "O"
    false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  token = "X"
  if valid_move?(board, index) && position_taken?(board, index)
    move(board, index, token)
    display_board(board)
  else
    turn(board)
  end
end
