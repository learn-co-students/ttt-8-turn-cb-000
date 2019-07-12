board = [" "," "," "," "," "," "," "," "," "]


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
  
  def move(board, input_to_index, character = "X")
   board[input_to_index] = character
  end

def position_taken?(board, index)
if board[index] == " " 
  return board[index] != " "
  elsif board[index] == ""
  return board[index] != ""
  elsif board[index] == nil
  return board[index] != nil
  elsif board[index] == "X"
  return board[index] == "X"
  elsif board[index] == "O"
  return board[index] == "O"
end
end

def valid_move?(board, index)
 if !position_taken?(board,index) && index <= 8 && index >= 0
   return true
end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  
    if valid_move?(board, index)
      move(board, index)
      puts display_board(board)
    else
      puts "Please enter 1-9:"
      turn(board)
      
    end 
end
