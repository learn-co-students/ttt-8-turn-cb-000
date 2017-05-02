

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} \n"
end


def valid_move?(board, index)
  if board[index] == 'X' || board[index] == 'O'
    false
  elsif index < 0 || index > 8
    false
  elsif board[index] == " "
    true
  end
end

def input_to_index (num)
  return input = (num.to_i)-1
end

def move (board, index, char)
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  num = input.to_i
  input_to_index(num)
  if(valid_move?(board, num-1))
    move(board, num-1,'X')
    display_board (board)
  else
    turn(board)
  end
end
