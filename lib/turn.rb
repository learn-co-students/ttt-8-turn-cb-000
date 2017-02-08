def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
board = ["X ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]
board[1] = " X "

display_board(board)

def input_to_index(user_input)
  user_input.to_i - 1
end


def move(board, index, value = "X")
  board[index] = value
end

def position_taken?(board, index)
  if board[index] == ' ' || board[index] == '' || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
   !position_taken?(board, index) && index.between?(0, 8)
 end

 def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
    if valid_move?(board, index)
      print "Please enter 1-9:"
      move(board, index)
      display_board(board)
    else turn(board)
      end
    end
