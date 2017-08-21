def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  input = input_to_index(input)

  if valid_move?(board, input) == true
    move(board, input)
    display_board(board)
  else
    until valid_move?(board, input) == true
      puts "Please enter 1-9:"
      input = gets.strip
      input = input_to_index(input)
    end
    move(board, input)
    display_board(board)
  end
end
