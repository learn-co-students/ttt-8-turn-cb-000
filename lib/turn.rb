# code your display_board method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your take turn method here!
def turn(board)
  your_turn = true
  while your_turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index) == true
      your_turn = false
    end
  end
  move(board, index, "X")
  display_board(board)
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8)
    if position_taken?(board, index)
      false
    else
      true
    end
  else
    false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     false
  elsif board[index]  == "X" || board[index] == "O"
     true
  else
    true
  end
end
