def valid_move?(board, index)

  if position_taken?(board, index)
    false
  else
    index_valid?(index) ? true : false
  end
end

def index_valid?(index)
  index.between?(0,8)
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] == "" && board[index] == " "
    false
  else
    false
  end
end
