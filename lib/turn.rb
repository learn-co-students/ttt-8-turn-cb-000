def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] ==  "" || board[index] ==  " " || board[index] ==  nil
    return false
  else
    return true
  end
end

def input_to_index(input)
  input = input.to_i
  input -= 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip

  index = input_to_index(input)

  valid_move = valid_move?(board, index)

  if valid_move == true
    move(board, index, token = "X")
  else
    until valid_move == true
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      valid_move = valid_move?(board, index)
    end
    move(board, index, token = "X")
  end
  display_board(board)
end
