
def turn(board)
  puts "Please enter 1-9:"
  value = gets.strip
  index = input_to_index(value)
  if valid_move?(board, index) == true
    move(board, index)
  else
    until valid_move?(board, index) == true
      turn(board)
      break
    end
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board = ["X", "X", "X", "X", "O", "0", "X", "0", "0"]

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(value)
  value.to_i - 1
end

def move(array, index, player="X")
  array[index] = player
end
