def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  until valid_move?(board, index) == true
    "Invalid move. Please enter 1-9."
    input = gets.strip
    index = input_to_index(input)
  end


  move(board, index, value = "X")
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

  def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

# code your #valid_move? method here
def valid_move?(board, index)
  position_taken = position_taken?(board, index)
  if (position_taken == false) && index.between?(0,8)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  else
    false
  end
end
