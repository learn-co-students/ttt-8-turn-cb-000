
# prints arbitrary arrangements of the board -----------
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# converts a user_input to an integer --------------
def input_to_index(user_input)
  user_input.to_i - 1
end

# allows "X" player in the bottom right and "O" in the top left
def move(array, index, character = "X")
  array[index] = character
end


def position_taken?(array, position)

  if array[position] == " " || array[position] == "" || array[position] == nil
    return false

  elsif array[position] == "X" || array[position] == "O"
    return true

  else
  end
end

# returns true/false based on index ----------------
def valid_move?(same_array, same_position)

  # if the board position is free and within array boundaries then true.
  if position_taken?(same_array, same_position) == false && same_position.between?(0, 8)
    return true

  else
    return false

  end
end

def turn(board_name)
  puts "Please enter 1-9:"
  input = gets.strip
  newinput = input_to_index(input)

  if valid_move?(board_name, newinput) == true
    move(board_name, newinput, character = "X")
    puts display_board(board_name)

  else
    turn(board_name)
  end
end
