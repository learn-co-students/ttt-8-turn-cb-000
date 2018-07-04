
def input_to_index(user_input)
  index = user_input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == "" || board[index] == " "
    false
  elsif board[index] == nil
    false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif index < 0 || index > 8
    false
  else
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index, token = "X")
  else
    until valid_move?(board, index) == true
      puts "Please enter 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
    end
    move(board, index, token = "X")
  end
  display_board(board)
end
