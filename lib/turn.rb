def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i
  return index - 1
end

def move(board, index, value = "X")
  board[index] = value
end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) || !(index.between?(0,8))
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_index = input_to_index(user_input)
  until valid_move?(board, user_index)
    puts "Please enter 1-9:"
    user_input = gets.strip
    user_index = input_to_index(user_input)
  end
  board[user_index] = "X"
  display_board(board)
end
