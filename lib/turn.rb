def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  a = user_input.to_i
  user_input = a - 1
  return user_input
end

def move(array,
  index, value = 'X')
  array[index]= value
end

# code your #valid_move? method here
def valid_move?(board,index)
	if index.between?(0,8) && position_taken?(board,index) == false
		true
	else
		false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  ["X", "O"].include?(board[index])
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else turn(board)
  end
end
