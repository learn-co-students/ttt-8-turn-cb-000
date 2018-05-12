def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
      input = input.to_i - 1
      if(input.is_a? Integer)
        return input
      else
        return -1
      end
end


def valid_move?(board, index)
  if(index.between?(0, 8) && board[index] == " ")
    return true
  else
    return false
  end
end


def move(board, index, symbol = "X")
    board[index] = symbol
end


def turn(board)
  valid_move = false
  while valid_move == false
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_move = valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end
