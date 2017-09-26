def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
  num !~ /\D/ ? num.to_i - 1 : -1
end

def valid_move?(board, index)
  if(index < 0 || index > 8)
    return false
  elsif(board[index].nil?)
    return false
  elsif(position_taken?(board, index))
    return false
  else return true
  end
end


def position_taken?(board, index)
  if(board[index] == "" || board[index] == " " || board[index] == nil)
    return false
  elsif(board[index] == "X" || board[index] == "O")
    return true
  end
end

def move(board, position, char = "X")
  board[position] = char
end

def turn(board)
  puts "Please enter 1-9:"
  turn = input_to_index(gets)
  if(valid_move?(board, turn))
    move(board, turn)
    display_board(board)
  else
    puts "invalid"
    turn = input_to_index(gets)
    if(valid_move?(board, turn))
      move(board, turn)
      display_board(board)
    end
  end
end
