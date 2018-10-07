def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  (board[index] ==  " " || board[index] == "" || board[index] == nil) ?
    false : true
end

def input_to_index(index)
  return index.to_i-1
end

def move(board,index,value="X")
  board[index] = value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.chomp)
  while !valid_move?(board,input)
    puts "Please enter 1-9:"
    input = input_to_index(gets.chomp)
  end
  move(board,input)
  display_board(board)
end
