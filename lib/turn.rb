def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if index.between?(0 , 8)
!(position_taken?(board, index))
else 1 == 2
end

end

def position_taken?(board, index)
 board[index] == " "
 board[index] == ""
 board[index] == "X" || board[index] == "O"


end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, index, value="X")
board[index] = value
end

def turn(board)
    
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == false
    turn(board)
  else
  move(board, index, value="X")
  display_board(board)
end
end
