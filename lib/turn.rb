#Displays board
board = [" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end

# converts user input to a integer
def input_to_index(index)
  index = index.to_i - 1
end

# finds out if a position is taken on the board
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

# defines a spot that cannot be taken or off the board
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

# defines the player move 
def move(board, index, value="X")
  board[index] = value
end

# ask user for input 
def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp.to_i - 1
  input_to_index(index)
  if valid_move?(board, index) == true
    move(board, index, value ="X")
  else
    turn(board)
  end
  display_board(board)
end
    
    
  

