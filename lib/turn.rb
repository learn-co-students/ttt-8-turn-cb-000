#define display_board
board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#define valid_move?
def valid_move?(board, index)
  if index.between?(0, 8) && board[index] == " "
    true
  else
    false
end
end
#define move
user_input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, input_to_index, char = "X")
  board[input_to_index] = char
end
#define turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
