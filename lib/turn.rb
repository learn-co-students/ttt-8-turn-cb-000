
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, position, value = "X")
  board[position] = value
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i
  index = input_to_index(user_input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index, value="X")
    display_board(board)
  end
end


##########
