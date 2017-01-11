def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    puts "That is an invalid move."
    turn(board)
  end
end

def valid_move? board, index
  if position_taken? board, index
    return false
  elsif index > 8 || index < 0
    return false
  else
    return true
  end
end

def position_taken? board, index
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def input_to_index(int)
   int.to_i - 1
end

def move (board, index, char = "X")
  board[index] = char
end
