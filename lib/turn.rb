def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)

  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
end

# code your #valid_move? method here
def valid_move?(board,index)
  if position_taken?(board,index) || !index.between?(0,8)
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"  ? true : false
end

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

def move(board, index, character="X")
  board[index] = character
end