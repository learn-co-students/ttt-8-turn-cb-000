def turn(board)
  puts "Please enter 1-9:"
  space = gets.strip
  space = input_to_index(space)
  while valid_move?(board, space) == false
    puts = "Please enter a valid number (1-9):"
    space = gets.strip
    space = input_to_index(space)
  end
  move(board, space, "X")

end

def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  else
    if index > 8 || index < 0
      return false
    else
      return true
    end
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(moveSpace)
  index = moveSpace.to_i - 1
  return index
end

def move(board, position, char = "X")
  board[position] = char
  display_board(board)
  return board
end
