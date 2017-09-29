
   def display_board(board)
     puts " #{board[0]} | #{board[1]} | #{board[2]} "
     puts "-----------"
     puts " #{board[3]} | #{board[4]} | #{board[5]} "
     puts "-----------"
     puts " #{board[6]} | #{board[7]} | #{board[8]} "
   end

   # code your input_to_index and move method here!

   def input_to_index(user_input)
     integer = user_input.to_i
     integer = integer - 1
   end

   def move(board, index, value = "X")
     board[index] = value
   end

   def position_taken?(board, index)
     board[index] == "X" || board[index] == "O"
   end

   def valid_move?(board, index)
     if !position_taken?(board, index) && index.between?(0,8)
       true
     else
       false
     end
   end

def valid?
   if valid_move? == true
     move
   else
     puts "Try Again"
   end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "invalid"
    turn(board)
  end
end
