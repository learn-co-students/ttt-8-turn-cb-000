def turn(board)
  puts "Please enter 1-9:"      #ask for input
  user_input = gets.strip           #get input
  index = input_to_index(user_input) #converting input to index
  if valid_move?(board, index)   #if index is valid
    move(board, index)
     display_board(board) #make the move for index
else
  turn(board) #ask for input again until you get a valid input
    end
end
#Display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#-------------
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    return true
  else
    false
  end
end


#method that defines each of the moves
def move(board,index,value="X")
  board[index] = value
end


#----------------
#converts user input to an interger
def input_to_index(input)
  (input.to_i) + -1
end
#-----------------
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == "  "
  else board[index] == "X" || board[index] == "O"
  end
end
