
#initiates user turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board,index,value="X") && display_board(board)
  else
  turn(board)
  end
end

#Displays the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Makes sure the move is valid
def valid_move?(board, index)
  if position_taken?(board, index) == true || index.between?(0,8) == false
    return false
  else
    return true
  end
end

#Method that defines each move
def move(board,index,value="X")
  board[index] = value
end

#converts user input to an interger
def input_to_index(input)
  (input.to_i) + -1
end

#checks that the position is available
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || "O"
    return true
  end
end
