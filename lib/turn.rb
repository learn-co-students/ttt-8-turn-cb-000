# display_board
def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your input_to_index and move method here!
def input_to_index(input)
position = input.to_i
position - 1
end


 #valid_move?
def valid_move?(board, position)
  position.between?(0,8) && !position_taken?(board, position)
end

#move method here
def move(board, position, character = "X")
  board[position] = character
  display_board(board)
end


#position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, position)
  !(board[position].nil? || board[position] == " ")
end

=begin until method
def until_valid
  valid_move(board, position) = 0
  until valid_move(board, position) == true
    puts "Please re-enter your answer"
    valid_move(board, position) += 1
end
=end

#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input_to_index(input)
  if valid_move?(board, position)
    move(board, position)
  else
    turn(board)
  end
  display_board(board)
end
