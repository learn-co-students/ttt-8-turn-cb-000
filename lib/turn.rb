#Displays position(s) taken and open.
def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

#Checks to see if the user's move is valid. A Method uses another method.
def valid_move?(board, index)
  if position_taken?(board, index) && index.between?(0,8)
    return true
  else
    return false
  end
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return true
  else
    return false
  end
end

#Converts the user's input to an integer.
def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

#Enables a user to select a position on the board, with a default char 'X'.
def move(board,index,char = 'X')
  board[index] = char
end

#Lets the user know whos turn it is.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index,char = 'X')
    display_board(board)
  else
    turn(board)
  end
end
