def display_board(board)
  puts " "+board[0]+" | "+board[1]+" | "+board[2]+" "
  puts "-----------"
  puts " "+board[3]+" | "+board[4]+" | "+board[5]+" "
  puts "-----------"
  puts " "+board[6]+" | "+board[7]+" | "+board[8]+" "
end

def valid_move?(board,index)
  return index >=0 && index<=8 && (board[index]==" " || board[index]=="")
end

def move(board,index,token="X")
  board[index]=token
end

def input_to_index(input)
  return input.to_i-1
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  go=input_to_index(input)
  if valid_move?(board,go)
    move(board,go,"X")
    display_board(board)
  else
    turn(board)
  end
end
