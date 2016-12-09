def turn(board)
  idx = -1
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    idx = input_to_index(input)
    if valid_move?(board, idx)
      break
    end
  end
  move(board, idx)
  display_board(board)
end


def valid_move?(board, idx)
  Array(0..8).include?(idx) && !position_taken?(board, idx)
end

def position_taken?(board, idx)
  ["X", "O"].include?(board[idx])
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  begin
    Integer(input) - 1
  rescue ArgumentError
    -1
  end
end

def move(board, idx, player = "X")
  board[idx] = player
end
