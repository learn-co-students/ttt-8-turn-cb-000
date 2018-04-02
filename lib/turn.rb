# Display Board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
def display_board(board)
	puts " #{board[0]} | #{board[1]} | #{board[2]} "
	puts "-----------"
	puts " #{board[3]} | #{board[4]} | #{board[5]} "
	puts "-----------"
	puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Valid Move?
# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 9)
    if !position_taken?(board, index)
      true
    else
      false
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    false
  else
    true
  end
end
# Move 
def input_to_index(input)
 index = input.to_i - 1
end

def move(board, index, character="X")
 board[index] = character
 board
end

# Turn
def turn(board)
	puts "Please enter 1-9:"
	input = gets.chomp
	index = input_to_index(input)
	if valid_move?(board, index) == true
		move(board, index)
		display_board(board)
	else
		turn(board)
end
end




