def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  # (board[index] ==  " " || board[index] == "") ?
  # true : false
   index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
  false : true
end

def move(board, index, whate = "X")
  board[index] = whate
end

def input_to_index(player_move)
  input = player_move.to_i
  final_move = input - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_input = input_to_index(input)
  if valid_move?(board, converted_input)
    move(board, converted_input)
    display_board(board)
  else
    turn(board)
  end
end
