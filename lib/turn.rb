require_relative 'display_board'
require_relative 'is_valid_index'
require_relative 'position_taken'

def turn(board)
  puts "Please enter 1-9:"
	input = gets.strip
  index = input_to_index(input)
	valid = nil
	loop do
		if valid_move?(board,index)
      move(board,index)
			display_board(board)
			valid = true
		else
			puts "Please enter 1-9:"
      input = gets.strip
			index = input_to_index(input)
		end
		if valid == true
			break
		end
	end
end

def valid_move?(board,index)
  is_valid_index?(index) && !position_taken?(board,index)
end

def move(board,index,token="X")
  board[index] = token
end

def input_to_index(input)
  return input.to_i - 1
end
