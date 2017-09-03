
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i
  i = index - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def valid_move?(board, index)
  if index.between?(0, 8)
    if (position_taken?(board, index) == false)
    true
  elsif (position_taken?(board, index) == true)
    false
    end
  end
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] ==  nil)
    return false
  elsif (board[index] == "X" || board[index] == "O")
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
    if (valid_move?(board, index))
      move(board, index, value = "X")
      display_board(board)
    else turn(board)
    end
end
