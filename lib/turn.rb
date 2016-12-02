def input_to_index (arg)
  p_input = arg.to_i
  p_input - 1
end

def move (board_array, item_index, player_note = "X")
  board_array[item_index] = player_note
end


def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index == 0
    index = 1
    if position_taken?(board, index)
      return false
    else
      return true
    end
  elsif index < 0 || index > 9
    return false
  end
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"

  index = input_to_index(gets.strip)
  while  valid_move?(board, index) == false
    puts "Invalid input, please enter 1-9"
    index = input_to_index(gets.strip)
  end
  move(board, index, )
  display_board(board)
end
