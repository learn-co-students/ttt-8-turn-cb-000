require_relative '../lib/turn'
require_relative '../lib/valid_move'
require_relative '../lib/display_board'

def turn(board)
  puts "Please enter 1-9:"

  user_input = gets.strip

  index = input_to_index(user_input)

  if valid_move?(board,index) == true && position_taken?(board,index) == false
    move(board,index,character = "X")
    display_board(board)
  else
    turn(board)
  end
end
