def display_board(position)
  puts " #{position[0]} " + "|" + " #{position[1]} " + "|" + " #{position[2]} "
  puts "-----------"
  puts " #{position[3]} " + "|" + " #{position[4]} " + "|" + " #{position[5]} "
  puts "-----------"
  puts " #{position[6]} " + "|" + " #{position[7]} " + "|" + " #{position[8]} "
end

def position_taken?(board, index)
  space = board[index]
  if space == " " || space == nil || space == ""
    return false
  elsif space == "X" || space == "O"
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8) == true
    return true
  end
end

def move(board, index, token = 'X')
  board[index] = token
  return board
end

def input_to_index(number)
number = number.to_i
number = number - 1
return number
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  puts "Thanks. Your input is #{input}."
  index = input_to_index(input)
  if valid_move?(board,index)
    board = move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
