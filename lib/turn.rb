def display_board(board)
row_one = " #{board[0]} " +"|" + " #{board[1]} " +"|" + " #{board[2]} "
rows_two_and_four = "-----------"
row_three = " #{board[3]} " +"|" + " #{board[4]} " +"|" + " #{board[5]} "
row_five = " #{board[6]} " +"|" + " #{board[7]} " +"|" + " #{board[8]} "
puts row_one
puts rows_two_and_four
puts row_three
puts rows_two_and_four
puts row_five
end
def position_taken?(board, index)
taken = nil
if (board[index] ==  " " || board[index] == "" || board[index] == nil)
taken = false
else
taken = true
end
taken

end
def valid_move?(board, index)
  if !position_taken?(board, index) && (index < 9 && index >= 0)
    return true
  end
  return false
end
def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
      turn(board)
  end
end
