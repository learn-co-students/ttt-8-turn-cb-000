def display_board(board)
  x = 0
  row = '-----------'
  while x < 3
    x += 1
    puts " #{board[x]} | #{board[x + 1]} | #{board[x + 2]} "
    if x < 2
      puts row
    end
  end
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  if (0..board.length - 1).include?(index)
    [" ", "", nil].include?(board[index])
  end
end

def move(board, index, character)
  board[index] = character
end

def turn(board)
  index = -1
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board, index, "X")
  display_board(board)
end
