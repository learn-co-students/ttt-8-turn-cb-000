def display_board(board)
  board.each_slice(3).with_index do |x, i|
    puts " #{x.join(' | ')} "
    next if i == 2
    puts "-----------"
  end
  puts
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == ' ' || board[index] == '' || board[index] == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

def move(board, index, player)
  board[index] = player
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  position = input_to_index(input)
  if valid_move?(board, position)
    move(board, position, player="X")
  else
    turn(board)
  end
end
