def display_board(board)



   puts " #{board[0]} | #{board[1]} | #{board[2]} "
     puts "-----------"
     puts " #{board[3]} | #{board[4]} | #{board[5]} "
     puts "-----------"
     puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(user_input)
user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) ==
     false && index >= 0 &&
     index <= 8
     true
   else
     false
end
 end

 def position_taken?(board, index)
   if board[index] == " "
     false
   elsif board[index] == ""
     false
   elsif board[index] == nil
     false
   else board[index] == "X" || "O"
     true
   end

      end

def move(array, index, value = "X")
  array[index] = value




      end

def turn(board)
        puts "Please enter 1-9:"
        input = gets.chomp
       index = input_to_index(input)
       if valid_move?(board, index)
         move(board, index, "X")
         display_board(board)
       else
         turn(board)
       end
     end
