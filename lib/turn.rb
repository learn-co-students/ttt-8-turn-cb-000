def turn(board)
  puts "Please enter 1-9:"
  moved = false
  while moved == false do
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index)
    moved = true
    display_board(board)
  end
end
end


def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

# code your #valid_move? method here
def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
    true
  else
    false
  end

end

def input_to_index(input)
  index = input.to_i - 1

end

def move(board, index, pos="X")
 board[index] = pos
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)

  if board[index] == " " || board[index] ==  "" || board[index] == nil
    false
  else
    true
end
  end
