#Display_Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# Displays current state of the board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# Input to index method
def input_to_index(input)
   index = input.to_i - 1
end
# valid_move? and position_taken methods.
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  index <= 8 && index >= 0 == true &&
  position_taken?(board, index) == false
end
# Move and turn method.
def move(board, index, token = "X")
  board[index] = token
end
# This is the method for the turns.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
    if valid_move?(board, index) == true
     move(board, index, token = "X")
   else
     turn(board)
    end
    display_board(board)
end
