#Display board method
def display_board(board)
  puts row = " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts row = " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts row = " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index,token="X")
  else
    turn(board)
  end
end

#Convert input to index number
def input_to_index(input)
  index = input.to_i - 1
end

#Is move valid?
def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  else
    return false
  end
end

#Helper to valid_move
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move(board,index,token="X")
  board[index] = token
  display_board(board)
end
