def display_board(board)
	print " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
	user_input.to_i - 1
end 

def valid_move?(board, index)
	#if move is valid
	if position_taken?(board,index) == false && index.between?(0,8) == true
		return true
	#if move is invalid
	elsif position_taken?(board, index) == true
		return false
	elsif index.between?(0, 8) == false 
		return false
	end
end
 
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] ==" "
    false
  elsif board[position]==""
    false
  elsif board[position] == nil
    false
  else
    true
  end
end

def move(board, go, value = "X")
  board[go] = value
end

def turn(board) 
	puts "Please enter 1-9:"
	input = gets.chomp
	index = input_to_index(input)
	if valid_move?(board, index) == true
		move(board, index, value = "X")
		puts display_board(board)
	elsif valid_move?(board, index) == false
		puts "Please enter 1-9:"
		input = gets.chomp
	else 
		puts "Please enter 1-9:"
		input = gets.chomp
	end
end