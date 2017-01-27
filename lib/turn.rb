def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
user_index = input.to_i - 1
end

def move(board,index,value="X")
board[index]=value
end

def position_taken?(board, index)
  if board[index]== " " || nil
    false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8) == true
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  user_index = input_to_index(input)
  if valid_move?(board, user_index) == true
    move(board, user_index, value="X")
  else
    turn(board)
  end
  display_board(board)
end
