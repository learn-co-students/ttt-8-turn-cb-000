def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index_var = input_to_index(input)
  if valid_move?(board, input_to_index_var)
    move(board, input_to_index_var)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  else return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else return true
  end
end

def input_to_index(user_input)
user_input = user_input.to_i
user_input = user_input - 1
end

def move(board, position, char='X')
  board[position] = char
end
