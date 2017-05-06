# Define display_board that accepts a board and prints
# out the current state.
def display_board(move)
puts " #{move[0]} " + "|" + " #{move[1]} " + "|" + " #{move[2]} "
puts "-----------"
puts " #{move[3]} " + "|" + " #{move[4]} " + "|" + " #{move[5]} "
puts "-----------"
puts " #{move[6]} " + "|" + " #{move[7]} " + "|" + " #{move[8]} "
end
# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8) == true
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  space = board[index]
  if space == " " || space == nil || space == ""
    return false
  elsif space == "X" || space == "O"
    return true
  end
end
# code your input_to_index and move method here!
def input_to_index(number)
number = number.to_i
number = number - 1
return number
end

def move(array, index, player = "X")
array[index] = player
return array
end
## take a turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  puts "The input is:" + input
  index = input_to_index(input)
  if valid_move?(board,index)
    board = move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
