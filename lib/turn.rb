def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, index, character = "X")

  #changing the element of the given array at the given index to the given character
  array[index] = character

  #returning modified array
  array
end

def input_to_index(string_input)

  #coverting string input to an integer and subtracting it by 1
  (string_input.to_i) - 1

end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == ""  || board[index] == nil)
    false

  elsif (board[index] == "X" || board[index] == "O")
    true
  end
end

def valid_move?(board, input)

  index = input.to_i

  if !index.between?(0,8) || position_taken?(board, index)
    false

  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if !valid_move?(board, index)
    while !valid_move?(board, index)
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
  end

  move(board, index)

  puts
  display_board(board)
  puts

end
