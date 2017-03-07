def display_board(board)
  pipe_row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  pipe_row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  pipe_row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  line_row = "-----------"

  puts pipe_row_one
  puts line_row
  puts pipe_row_two
  puts line_row
  puts pipe_row_three
end

def turn(board)
  next_turn = false
  until next_turn == true
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    if valid_move?(board, index)
      move(board, index, "O")
      display_board(board)
      next_turn = true
    else
      # Ask for input again
      puts "Opps, invalid entry, try again!"
    end
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
  return false
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  return true
end

def input_to_index(position)
  return position.to_i - 1
end

def move(board, position, player = "X")
  return board[position] = player
end
