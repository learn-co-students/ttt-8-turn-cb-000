def display_board(board)
  lineString = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts lineString
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts lineString
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(input)
  int = input.to_i
  pos = int - 1
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid = valid_move?(board, index)
  if valid == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
