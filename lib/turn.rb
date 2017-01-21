def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input = user_input.to_i
  input = input - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def valid_move?(board,index)
  if index > 8 || index < 0
    nil
  elsif !position_taken?(board,index)
    true
  elsif position_taken?(board,index)
    false
  end

end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index].nil?
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip()
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end
