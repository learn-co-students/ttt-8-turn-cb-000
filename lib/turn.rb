
#Display Board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

#Valid Move
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
      true
  else
    false

  end
end

#Position Taken
def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "Y"
    true

  end
end

#Input to index
def input_to_index(input)
  input.to_i - 1
end

#move
def move(array, index, player = "X")
  array[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = 0
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    puts display_board(board)
  else
    turn(board)
  end
end
