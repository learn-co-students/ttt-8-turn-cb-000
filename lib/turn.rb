def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input=input.to_i
  input=input-1
  return input
end

def valid_move?(board,input)
  if input<0 || input>8 || position_taken(board,input)==false
    return false
  end
  return true
end

def position_taken(board,input)
  if board[input] != " "
    return false
  end
  return true
end

def move(board,input, token="X")
  board[input]=token
end

def turn(board)
  puts "Please enter 1-9:"
   input = gets
   input = input_to_index(input)
   while valid_move?(board,input)==false
     puts "Bad Move, please give valid move"
     input=gets
     input = input_to_index(input)
   end
   move(board,input)
   display_board(board)
end
