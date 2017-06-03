#turn method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  index = input_to_index(input)
  if valid_move?(board, index)
      move(board, index)
  else
    turn(board)
  end
  display_board(board)
end

#input to index method
def input_to_index(input)
  input = input.to_i
  value = 0
  if input !=0
    index = input - 1
    return index
  elsif input == 0 #input == nil
    value = -1
    return value
  end
end

#display method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid move method
def valid_move?(board, index)
  position = false
  valid = false
  if position_taken?(board, index) == false
    position = true
  end
  if index.between?(0,8)
    valid = true
  end
  if position == true && valid == true
    return true
  else
    return false
  end
end

#position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" #|| board[index] == nil
    return false
  elsif board[index] != " " || board[index] != ""
    return true
  end
end

#move method
def move(board, index, value = "X")
  board[index] = value
  return board
end