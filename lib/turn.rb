#greet
def greet
  puts "Welcome to Tic Tac Toe!"
  #puts "Where would you like to go?"
end

#display_board
def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move?
def valid_move?(board, index)
  result = true

  if (index < 0 || index > 8)
    result = false
  end

  if (position_taken?(board, index))
    result = false
  end

  return result
end

#position_taken?
def position_taken?(board, index)
  if (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

#move
def move(board, index, char = "X")
  board[index] = char
end

#input_to_index
def input_to_index(move)
  move = move.to_i - 1
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  move = input_to_index(gets.strip)
  if (valid_move?(board, move))
    move(board, move)
    display_board(board)
  else
    turn(board)
  end
end
