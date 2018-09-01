def display_board(board)
 print " #{board [0]} ", "|", " #{board [1]} ", "|", " #{board [2]} "
 puts "\n"
 print "-----------"
 puts "\n"
 print " #{board [3]} ", "|", " #{board [4]} ", "|", " #{board [5]} "
 puts "\n"
 print "-----------"
 puts "\n"
 print " #{board [6]} ", "|", " #{board [7]} ", "|", " #{board [8]} "
 puts "\n"
end  

def valid_move? (board,index)
  index.between?(0,8) && !(position_taken?(board,index))
end 


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  board[index] != " " && !(board[index] == nil || board[index] == "")
end 

def input_to_index(user_input)
  user_input.to_i - 1
end

def move (board, index, player_character="X")
  puts board[index] = player_character
end  



def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if (valid_move?(board,index)) 
    move(board,index)
    display_board(board)
  else
    turn(board)
  end 
end 