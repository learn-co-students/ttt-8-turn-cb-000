def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def index_valid?(index)
  index.between?(0,8)
end

def valid_move?(board, index)

  if position_taken?(board, index)
    false
  else
    index_valid?(index) ? true : false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == "" && board[index] == " "
    false
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if index_valid?(index)
    move(board, index)
  else
    puts "Invalid input, please try again!"
    turn(board)
  end
end

def move(board, index, token="X")
  if valid_move?(board, index)
    board[index] = token
    display_board(board)
  else
    false
  end
end
