def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return true if !position_taken?(board, index) && index.between?(0,8)
  false
end

def position_taken?(board, index)
  return true if board[index] == "X" || board[index] == "O"
  false
end

def move(board, index, token="X")
  board[index] = token
end

def input_to_index(answer)
  index = answer.strip.to_i
  index -= 1
end

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.strip
  index = input_to_index(answer)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
