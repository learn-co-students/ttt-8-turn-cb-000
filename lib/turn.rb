#---------------------

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#---------------------

def input_to_index(user_input)
  "#{user_input}".to_i - 1
end
#---------------------

def position_taken?(array, index_number)
  if array[index_number] == " "
    false
  elsif array[index_number] == ""
    false
  elsif array[index_number] == nil
    false
  else
    true
  end
end

#---------------------

def valid_move?(array, index_number)
  if position_taken?(array, index_number) == false && index_number.between?(0,8)
    true
  else
    false
  end
end

#---------------------

def move(array, index_number, value = "X")
  array[index_number] = value
end

#---------------------

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  index_number = input_to_index(user_input)
    if valid_move?(board, index_number) == true
      move(board, index_number, "X")
      display_board(board)
    else
      puts "That's invalid!"
      turn(board)
    end
end
