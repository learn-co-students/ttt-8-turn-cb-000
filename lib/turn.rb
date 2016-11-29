# self-explanatory, prints arbitrary arrangements of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# converts a user_input to an integer
# subtracts 1 from the input
# returns -1 for strings without integers
def input_to_index(input)
  input.to_i - 1
end

# Accepts 3 arguments, board, position player wants to fill and their symbol, ,X or O
# provides a default value for the 3rd argument
def move(board, index, symbol = "X")
  board[index] = symbol
end

# accepts a board and the index to check as arguments
# returns false if the board has an empty string " " in the desired index
# returns false if the board has an empty string "" in the index
# returns false if the board has nil in the index
# returns true if the board has a value of "X" or "O" in the index
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
      taken = false
    elsif board[index] == "X" || board[index] == "O"
      taken = true
    end
end

# returns true for a valid position on an empty board
# returns nil or false for an occupied position
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# asks the user for input by printing: "Please enter 1-9:"
# gets the user input
# calls the input_to_index method
# validates the input correctly
# asks for input again after a failed validation
# makes valid moves
# displays a correct board after a valid turn
def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip
    index = input_to_index(userInput)
    if valid_move?(board, index)
      move(board, index)
    else
      puts "That is an invalid move, try again!"
      turn(board)
    end
    display_board(board)
end
