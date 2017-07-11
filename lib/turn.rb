
def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0, 8)
    true
    if !position_taken?(board, index)
      true
    end
  elsif !index.between?(0, 8)
    false
  else
    false
  end
end


def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    false
  else
    true
  end
end


def input_to_index(user_input)
  user_input.to_i - 1
end


def move(array, index, value = "X")
  array[index] = value
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
    turn(board)
  end
  display_board(board)
end
