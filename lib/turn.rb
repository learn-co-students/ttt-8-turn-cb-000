def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  a = input_to_index(index)
  if !valid_move?(board, a)
    turn(board)
  end
  move(board, a)
  display_board(board)

end

def display_board(args)
  puts " #{args[0]} | #{args[1]} | #{args[2]} "
  puts "-----------"
  puts " #{args[3]} | #{args[4]} | #{args[5]} "
  puts "-----------"
  puts " #{args[6]} | #{args[7]} | #{args[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && !(position_taken?(board,index))
    true
  else
    false
  end
end

def position_taken?(board,index)
  a = board[index]
  if a == "X" || a == "O"
    true
  else
    false
  end
end

def input_to_index(x)
  a=x.to_i
  a=a-1
end

def move(arr, indx, ltr="X")
  arr[indx]=ltr
end
