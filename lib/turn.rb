def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  board[index] == " " && index.between?(0, 8)
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  position = input_to_index(gets.strip)
  until valid_move?(board, position) do
    puts "Please enter 1-9:"
    position = input_to_index(gets.strip)
  end
  move(board, position)
  display_board(board)
end
