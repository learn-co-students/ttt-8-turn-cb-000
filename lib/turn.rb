def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
  if !index.between?(0,8)
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

def position_taken?(board, index)
  if ((board[index] == (" ")) || (board[index] == ("")))
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

def turn(board)
  puts "Welcome to Tic Tac Toe!"
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    puts "Invalid Move"
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
  end
end
