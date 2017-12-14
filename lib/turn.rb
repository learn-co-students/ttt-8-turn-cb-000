def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, index)
  if (board[index] == " " || board[index] == "") && index.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    index = input_to_index(gets.chomp)
    valid = valid_move?(board, index)
    if valid
      move(board, index)
      display_board(board)
      break
    end
  end
end
