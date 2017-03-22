def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  return user_input.to_i-1
end
def move(array, index, value= "X" )
  array[index]=value
end
def position_taken?(board, index)

  if board[index] == " " or board[index] == "" or board[index] == nil
    return false
  else board[index] == "X" or board[index] == "O"
    return true
end
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  else
    false
  end
end
