def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = 'X')
  board[index] = char
end


# code your #valid_move? method here
def valid_move?(board, index)
  if !index.between?(0,8)
    false
  elsif position_taken?(board, index)
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  answer = gets.to_i
  index = input_to_index(answer)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    answer = gets.to_i
    index = input_to_index(answer)
  end
  move(board, index)
  display_board(board)
end

#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
#turn(board)
