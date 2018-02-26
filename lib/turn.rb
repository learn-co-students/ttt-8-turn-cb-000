def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  index = input_to_index(num)
  if valid_move?(board, index)
    move(board, index, char = "X")
  else turn(board)
  end
  display_board(board)
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board,index)
      false
    else true
    end
  else false
  end
end

def position_taken?(board, index)
if board[index] == " " || board[index] == "" or board[index] == nil
  return false
else true
end
end


def move(board, index, char = "X")
  board[index] = char
  board
end

def input_to_index(num)
  index = num.to_i - 1
  index
end
