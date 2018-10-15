def turn(board)
  puts "Please enter 1-9:"
  user_input = input_to_index(gets.strip)
  until valid_move?(board, user_input) == true
    puts "Please enter a valid input between 1 and 9:"
    user_input = input_to_index(gets.strip)
  end
   move(board, user_input)
   display_board(board)
end


# code your #valid_move? method here
#checking if index is between 0 & 8, and if the position is not taken => considered a valid move

def valid_move?(board, index)
  if (index.between?(0,8) && position_taken?(board,index) == false )
    true
  else
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  elsif (board[index] == "X" || board[index] =="O")
    true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
  end

def move(board, index, value = "X")
  board[index] = value
  end
