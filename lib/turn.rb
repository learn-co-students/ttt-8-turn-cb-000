# Display the game board
board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Asks the user for input 1-9 and converts to an integer
def input_to_index(input)
  input.to_i - 1 
end

# Checks the user input if valid
def valid_move?(board, index)
  if index.between?(0,8) && board[index] == " " || board[index] == ""
    true
  else false
  end
end

# Places the users converted input into the board with the proper token
def move(board, index, player_type = "X")
  board[index] = player_type
end

# Players turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index) == true
      move(board, index, player_type = "X")
    else turn(board)
    end
  display_board(board)
end
