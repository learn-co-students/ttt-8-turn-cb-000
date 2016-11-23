def display_board(boardStatus)
  puts " #{boardStatus[0]} | #{boardStatus[1]} | #{boardStatus[2]} "
  puts "-----------"
  puts " #{boardStatus[3]} | #{boardStatus[4]} | #{boardStatus[5]} "
  puts "-----------"
  puts " #{boardStatus[6]} | #{boardStatus[7]} | #{boardStatus[8]} "
end

def input_to_index(userInput)
  userInput = userInput.to_i
  userInput - 1
end

def move(board, index, pCharacter = "X")
  board[index] = pCharacter
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false && index >= 0 && index < 9
    return true
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    return false
  end
  if board[index] == ""
    return false
  end
  if board[index] == nil
    return false
  end
  if board[index] == "X" || "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
