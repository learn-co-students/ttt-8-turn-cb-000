def turn(board)

#ask for input

  puts "Please enter 1-9:"


#get input
  input = gets.chomp
# convert input to index
input =  input_to_index(input)

#if index is validation
#make the move for index
#show board

if valid_move?(board,input)

move(board,input, token = "X")
  display_board(board)

#else
else
  turn(board)

end

#ask for input again until you get a valid input

end

#convert input to index

def input_to_index(user_input)
  user_input.to_i - 1
end

#move method  should accept a board and an index from the user
def move(board,index,token)
  board[index] = token



end
# Define display_board that accepts a board and prints
# out the current state.
board = [" "," "," "," "," "," "," "," "," "]

# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board(board)
board1 =  " #{board[0]} | #{board[1]} | #{board[2]} "
board_bottom = '-----------'

board2 =  " #{board[3]} | #{board[4]} | #{board[5]} "
board_bottom = '-----------'


board3 =  " #{board[6]} | #{board[7]} | #{board[8]} "
board_bottom = '-----------'

  puts board1
  puts board_bottom
  puts board2
  puts board_bottom
  puts board3


end

# code your #valid_move? method here
def valid_move?(board, position)

position.between?(0,8) && !position_taken?(board, position)
#position.between?(0,8) and not position_taken?(board, position)

end




# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false

  elsif board[index] == nil
    false


elsif board[index] == "X" || board[index] == "O"
    true

end

end
