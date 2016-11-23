def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  if index != nil
    if (board.size > index) && (index > -1) && (board[index] != "O") && (board[index] != "X")
      return true
    else
      return false
    end
  end
end

def move(board, index, character)
       if valid_move?(board, index)
         board[index] = character
         return true
       end
      return false
end

def turn(board)




  valid_turn = false
  while !valid_turn
    puts "Please enter 1-9:"
    input = input_to_index(gets)
    if move(board, input, character="X")
      valid_turn = true
      display_board(board)
    end
  end





end
