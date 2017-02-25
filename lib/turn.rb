def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  #input_to_index(input)
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index,value="X")
    display_board(board)
  else turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index) #returns true/false based on index
  if board[index] == "X" || board[index] == "O"
    #puts index
    return false
  elsif (index >= 0) && (index <= 8)
    #puts index
    return true
  else return false
  end
end

def move(array,index,value="X")
  #allows "X" player in the bottom right and "O" in the top left
  array[index] = value
end

def input_to_index(input)
  #converts a user_input to an integer, subtracts 1 from the user_input, and returns -1 otherwise
  return input.to_i - 1
  #puts "Index is #{index} of class #{index.class}."
end
