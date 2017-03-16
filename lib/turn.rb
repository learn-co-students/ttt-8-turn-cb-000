def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(arr, ind)
  if ind >= 0 && ind < arr.length && ind.class == Fixnum
    !position_taken?(arr, ind)
  elsif position_taken?(arr, ind) && ind.class == Fixnum
    puts "The position number #{ind} is already occupied or your response was a non-number. Please select a non-occupied position on the board."
    return false
  else
    puts "The position number #{ind} is not a valid board location. Please select a valid board position."
    return false
  end
end

def position_taken?(arr, ind)
  if arr[ind] == " " || arr[ind] == "" || arr[ind] == nil
    false
  else
    true
  end
end

def move(arr, ind, val = "X")
  arr[ind] = val
end


def turn(arr)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(arr, input)
    move(arr, input)
    display_board(arr)
  else
    turn(arr)
  end
end

#board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
#turn(board)
