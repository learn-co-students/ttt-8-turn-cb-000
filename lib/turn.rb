def move(board, position, current_player = "X")
  board[position] = current_player
end

def input_to_index(input)
  index = (input.to_i) - 1
  return index
end

def valid_move?(board, index)
  if (index.between?(0,8))
    if (position_taken?(board, index) == false)
      return true
    end
  end
end


def position_taken?(board, index)
  if (board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  else
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


def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)
  if valid_move?(board, input) != true
  puts "Invalid Entry"
  turn(board)
  end
  move(board,input,letter="X")
  display_board(board)
end
