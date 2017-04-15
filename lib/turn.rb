def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  position = input_to_index(position)
  if valid_move?(board, position) == true
    # make move and display board to user
    move(board, position)
    display_board(board)
  else
    turn(board)

  end

end

# Define a method display_board that prints a 3x3 Tic Tac Toe Board
def display_board(board)
  row_1 = " " + board[0] + " | " + board[1] + " | " + board[2] + " "
  row_2 = " " + board[3] + " | " + board[4] + " | " + board[5] + " "
  row_3 = " " + board[6] + " | " + board[7] + " | " + board[8] + " "
  divider = "-----------"
  puts row_1
  puts divider
  puts row_2
  puts divider
  puts row_3
end


# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index > 8 || index < 0
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
if board[index] == "X" || board[index] == "O"
  true
elsif board[index] == " " || board[index] == "" || board[index] == nil
  false
  end

end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

#board = [" ", " " ," ", " ", " ", " ", " ", " ", " " ]
