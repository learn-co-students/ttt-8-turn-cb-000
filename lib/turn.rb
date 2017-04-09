def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  if input.to_i.to_s == input
    return (input.to_i) -1
  end
  -1
end

# code your #valid_move? method here
def valid_move?(board,move)
  if !position_taken?(board,move) && move.between?(0,8)
    return true
  end
  false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == '' || board[index] == ' ' || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def move(board,index,token = "X")

    board[index] = token
  
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)

  end

end
