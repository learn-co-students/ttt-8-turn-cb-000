board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
if board[index] == " "
  return false
elsif board[index] == ""
  return false
elsif board[index] == nil
  return false
elsif board[index] == "X" || board[index] == "O"
  return true
end
end

def valid_move?(board, index)
if index.between?(0,8) && position_taken?(board, index) == false || nil
  return true
else
end
end

def move(board, index, position = 'X')
 board[index] = position
end

def turn(board)
puts "Please enter 1-9:"
input = gets.chomp
index = input_to_index(input)
if valid_move?(board, index) == true
  move(board, index, position = 'X')
else
  turn(board)
end
display_board(board)
end
