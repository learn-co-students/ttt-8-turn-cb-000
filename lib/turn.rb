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

def position_taken?(board , index)
   if board[index] == " " || board[index] == "" || board[index] == nil
     false
   else
     true
   end
end

def valid_move?(board , index)
  if position_taken?(board , index)
    false
  elsif (index <= 8 && index >= 0)
    true
  end
end

def move(board , index , player = "X")
  if valid_move?(board , index)
    board[index] = player
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  input = input_to_index(user_input)
  if (input <= 8) && (input >= 0)
    move(board , input)
    display_board(board)
  else
    turn(board)
  end
end
