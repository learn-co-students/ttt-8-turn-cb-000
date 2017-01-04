def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, real_pos)
  if !position_taken?(board, real_pos) && real_pos.between?(0, 8)
    true
  elsif position_taken?(board, real_pos) || !real_pos.between?(0, 8)
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(user_pos)
  new_pos = user_pos.to_i
  newest_pos = new_pos - 1
  return newest_pos
end

def move(board, idx, user_char = "X")
  board[idx] = user_char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  #puts "Are you Xs or Os?"
  #user_char = gets.chomp
  if valid_move?(board, input)
    move(board, input, user_char = "X")
    display_board(board)
  else
    turn(board)
  end
end
