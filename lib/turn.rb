def greeting(name)
  puts "Hello #{name}. It's nice to meet you."
end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def move(array, index, value="X")
  array[index] = value
end


def position_taken?(board , index)
  if board[index] == " " || board[index] == nil || board[index]== ""
    return false
  else
    return true
  end
end


def valid_move?(board,index)
  if position_taken?(board, index)== false && index.between?(0,8)== true
        return true
    else
        return false
    end

end


def using_while
	levitation_force = 6

	while levitation_force < 10
		puts "Wingardium Leviosa"
		levitation_force += 1
	end
end


def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
      if valid_move?(board,index) == true && position_taken?(board , index)== false
        move(board,index, value="X")
        display_board(board)
     else# else
       turn(board)#   ask for input again until you get a valid input
     end # end
   end
##
#put to index
##if index is valid
##  make the move for input
##else
##  ask for input again until you get a valid input
##end
