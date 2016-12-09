#ask for input
#get input
#convert input to index
#if index is valid
#  make the move for index
#  show the board
#else
#  ask for input again until you get a valid input
#end

def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip

  index = input_to_index(number)
  valid = valid_move?(board, index)
  
  if valid == false
    while valid == false
      puts "Please enter 1-9:"
      second_pass = gets.strip
      valid = valid_move?(board, input_to_index(second_pass))
    end
  end 

move(board, index)
display_board(board)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index.between?(0, 8)
     if position_taken?(board, index)
       false
     else
       true
     end
  else
     false
  end
end

def position_taken? (board, index)
  if board[index] == ""
    false
  elsif board[index] == " "
    false
  elsif board[index] == nil
    false
  elsif (board[index] == "X") || (board[index] == "O")
    true
  end
end

def input_to_index(number)
  number = number.to_i
  number = number - 1
end

def move(array, index, value = "X")
  array[index] = value
end
