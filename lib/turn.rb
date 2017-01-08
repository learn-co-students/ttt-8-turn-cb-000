
def turn (board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end


def move(board, index, char = "X")
  board[index] = char
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index >= 0 && index < 9
    if position_taken?(board, index) == false
      return true
    end
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "O" || board[index] == "X"
    return true
  else
    return false
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
end

#displays current state fo the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
