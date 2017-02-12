# Check labs/ttt-4-display-board-rb-cb-000 for a different #display_board implementation

def display_board(board)
  puts " " + board[0] + " | " + board[1] + " | " + board[2] + " "
  puts "-------------"
  puts " " + board[3] + " | " + board[4] + " | " + board[5] + " "
  puts "-------------"
  puts " " + board[6] + " | " + board[7] + " | " + board[8] + " "
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  input = user_input.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  arr_index = input_to_index(user_input)
  # valid_move?(board, arr_index)
  if !valid_move?(board, arr_index)
    puts "Please enter a different option"
    user_input = gets.strip
  else
    move(board, arr_index)
    display_board(board)
  end
end
