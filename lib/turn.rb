
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, ind)
  return false if ind.between?(0,8) == false
  return false if board[ind] == "X" || board[ind] == "O"
  true
end

def move(board, ind, token="X")
  board[ind] = token
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  ind = input_to_index(input)
  if valid_move?(board, ind) == false
    turn(board)
  end
  move(board, ind)
  display_board(board)
end
