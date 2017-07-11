# Define display_board that accepts a board and prints
# out the current state.
def display_board(board=[" "," "," "," "," "," "," "," "," "])

   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "

 end

def input_to_index(user_input)
  #user_input.to_i-1
  index = user_input.to_i-1
end

def valid_move?(board, index)

  #test = index.to_i-1

  if !index.between?(0,8)
    false

  elsif !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)

  if board[index]== "" || board[index]== " " || board[index]== nil
    false
  else board[index]== "X" || board[index]== "O"
    true
  end

end
def move(board, index, char = "X")
  board[index.to_i] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  valid = valid_move?(board, input)
  if valid == true
    move(board, input, "X")
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
end
end
