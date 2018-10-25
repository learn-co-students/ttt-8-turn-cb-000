def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end  

def valid_move?(board, index)
  if index <= 8 && index >= 0 && !position_taken?(board, index)
    true
  else puts "Please enter 1-9:"  
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == '' || board[index] == nil
    false
    
  elsif board[index] == "X" || board[index] == "O"
   true
  else puts "Please enter 1-9:"
  end  
end

def move(board, index, value = 'X')
  board[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board, index) && !position_taken?(board, index)
    move(board, index)
    display_board(board)

  else valid_move?(board, index) && !position_taken?(board, index)
    turn(board)
  end
end
