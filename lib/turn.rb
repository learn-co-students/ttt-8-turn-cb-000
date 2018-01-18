def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board =["X","","","","X","","X","X","X"]

def valid_move?(board,index)
 if index < 9 && index > -1 && board[index] != 'X' && board[index] != 'O'
  return true
 else
  return false
 end
end

def input_to_index(num)
  return num.to_i - 1
end

def move(board,index,token = 'X')
 return board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  isValid = valid_move?(board,index)
  if isValid === true
    move(board,index)
    display_board(board)
  else
    puts 'Please enter correct input'
    turn(board)
    end
end
