def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#--------------------------------------------------------------
def input_to_index(user_input)
 index = user_input.to_i
 index -= 1
end
# Is the User's Input on the Board or Taken already?
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
     true
  else
     false
  end
end

#------------------------------------------------------------
# Below Defines if the position is taken on the board.
def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
      false
    elsif board[index] == nil
      false
    elsif board[index] != " " || board[index] == ""
      true
    else
      false
      #/usr/bin/env ruby
    end
end

#---------------------------------------------------------------
# Below Places the user's move on the board and shows it!
def move(board, index, token = "X")
  board[index] = token
end
#-----Turn Instructions Below ----------
def turn(board)

  puts "Please enter 1-9:"
      user_input = gets.strip
    #  input_to_index(user_input)
      index = input_to_index(user_input)
          if
            valid_move?(board, index)
          else
            turn(board)
          end
      move(board, index, value = "X")
      display_board(board)
end
