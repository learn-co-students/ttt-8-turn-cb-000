def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] == nil
    false
  else
    true
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
end  

def valid_move?(board,index)
  if position_taken?(board,index) == true
    false
  elsif index.to_i <= 8 && index.to_i >= 0
    true
  end
end

def move(board,index,character = "X")
  board[index] = character
end
