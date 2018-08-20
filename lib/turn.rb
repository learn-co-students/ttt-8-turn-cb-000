def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def move(board, index, value ="X")
  board[index]=value
end

def input_to_index(input)
  index=input.to_i-1
end

def valid_move?(board, index)
  if index.between?(0,8) == true && (position_taken?(board, index) == false)
      return true
  else
      return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index]== "O"
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.chomp
  index=input_to_index(input)
    if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index, value ="X")
    display_board(board)
  end
end
