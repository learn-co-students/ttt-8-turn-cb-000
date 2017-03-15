# Functions involved in a single Tic Tac Toe turn

# Accepts an array representing the state and displays the Tic Tac Toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Accepts the user input value and translates it into an array index
def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
end

# Takes the current board and move as parameters and returns whether or not
# the move is valid
def valid_move?(board, index)
  if !index.between?(0,8)
    false
  elsif board[index] == "X" || board[index] == "O"
    false
  else
    true
  end
end

# Changes the board state to represent the players move
def move(board, index, player)
  board[index] = player
end

# Processes a turn for a user
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index = input_to_index(user_input)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    user_input = gets
    index = input_to_index(user_input)
  end
  move(board, index, "X")
  display_board(board)
end
