
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (index.between?(0, 8) && !postion_taken?(board, index))
    true
  else
    false
  end
end

def move(array, index, value="X")
  array[index] = value
end

def input_to_index(input)
  input.to_i - 1
end

def postion_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    until valid_move?(board, index)
      puts "#{input} is not a number 1-9! \nPlease enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
    end
    move(board, index)
  end
  display_board(board)
end
