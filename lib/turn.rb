
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, character = 'X')
  return board[index] = character
end


def valid_move?(board, index)
  if (index < 0 || index > 8)
      puts "You must move to a position within the tic tac toe board."
      return false
  elsif position_taken?(board, index)
    puts "The position must be vacant, not currently taken by a player."
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if (board[index] == " ") ||
     (board[index] == "") ||
     (board[index] == nil)
    return false
  elsif (board[index] == "X") || (board[index] == "O")
    return true
  end
end

def turn(board)
  puts "Welcome to Tic Tac Toe!"
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  until valid_move?(board, index)
    input = gets.strip
    index = input_to_index(input)
  end
  move(board,index)
  display_board(board)
end
