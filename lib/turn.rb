#Valid move method looks at the state of the board and the index that
#the user is trying to move to and returns if it is a valid move or not
#It checks both if the position is on the board and if it is taken
def valid_move?(board,index)
  if position_taken?(board,index)
  else
    if index >=0 && index <=8
      return true
    else
      return false
    end
  end
end

#This method must take in both the existing board and the index that the user
#is trying to fill if the index is already occupied it will not allow this
def position_taken?(board,index)
  position_value=board[index]
  if position_value != nil
    if position_value.include? "x" or position_value.include? "o" or position_value.include? "X" or position_value.include? "O"
      return true
    else
      return false
    end
  else
    return false
  end
end

#This method displays the board with all current places taken
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# This method converts the users input (1-9) to an index (0-8)
def input_to_index(input)
  output=input.to_i-1
end

# This Method updates the state of the board
def move(board,position,character="X")
  #First lets update the board
  board[position]=character
end

#Now lets define what it looks like for a turn
def turn (board)
  puts "Please enter 1-9:"
  intial_input = gets.strip
  desired_position = input_to_index(intial_input.to_i)
  if valid_move?(board,desired_position)
    move(board,desired_position)
    display_board(board)
  else
    turn(board)
  end
end
