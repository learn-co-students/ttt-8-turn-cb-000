# ask for input
# get input
# convert input to index
# if index is valid
  # make move
  # show new board
# else
  # ask for input again until you get valid input
# end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, user_input)
  (user_input >= 0 && user_input <= 8) && !position_taken?(board, user_input)
end

def position_taken?(board, index)
  return false if board[index] == " " || board[index] == "" || board[index] == nil
  return true
end

def move(board, index, character="X")
  board[index] = character
end

def input_to_index(input)
  input = input.to_i
  (input - 1)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    turn(board)
  end
end
