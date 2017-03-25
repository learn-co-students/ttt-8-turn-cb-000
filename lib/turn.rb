# Display Board Method
display_board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Checks to see if move entered is valid or not
def valid_move?(board, index)
  if  position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

#Checks to see if the position on the board is taken or not
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#Input to Index
def input_to_index(input)
  input.to_i - 1
end

#Move Method
def move(board, index,  player_char = "X")
  board[index] = player_char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
