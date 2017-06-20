# Display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Valid move
def valid_move?(board, index)
	if position_taken?(board, index) || !index.between?(0, 8) 
		return false
	else 
		return true	
	end
end

# Position Taken
def position_taken?(board, index)
	if (board[index] == "") || (board[index] == " ") || (board[index] == nil)
			return false
	else
		return true
	end
end

# Move Method with input to index
def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
  board
end

# Turn
def turn(board)
	puts "Please enter 1-9:"
	index = gets.strip 
	index = input_to_index(index)
	if valid_move?(board, index)
		move(board, index)
		display_board(board)
	else
		puts "Please try again"
		puts "Please enter 1-9:"
	  turn(board)
  end
 end
 





