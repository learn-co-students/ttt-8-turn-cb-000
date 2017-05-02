def valid_move?(board, index_to_validate)
  if (index_to_validate.between?(0, board.size - 1) && !position_taken?(board, index_to_validate))
     return true
   else
     return false
   end
end

def position_taken?(board, index_to_validate)
  if (board[index_to_validate] == "X" || board[index_to_validate] == "O")
    return true
  end
  return false # NOTE: if we arrive here, the position is definitely not taken
end

def display_board(board)
  row_separator = "-----------"
  row_index = 0
  while row_index < 3
    if (row_index > 0)
      puts row_separator
    end
    display_row(board[(row_index * 3), 3])
    row_index += 1
  end
end

def display_row(row)
  cell_index = 0
  while cell_index < 3
    if (cell_index > 0)
      print "|"
    end
    print (" #{row[cell_index]} ")
    cell_index += 1
  end
  print "\n"
end

def input_to_index(player_input)
  return player_input.to_i - 1
end

def move(board, position, char="X")
  board[position] = char
end

def turn(board)
  loop {
    puts ("Please enter 1-9:")
    input = gets.chomp
    index = input_to_index(input)
    if (valid_move?(board, index))
      move(board, index)
      display_board(board)
    else
      puts("Sorry, #{input} is not valid!")
    end
    if !(board.include?(" ") || board.include?("") || board.include?(nil))
      break
    end
  }
end