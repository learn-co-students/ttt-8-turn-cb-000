# take a turn at tic tac toe
def turn(board)
  # Invite move
  puts "Please enter 1-9:"
  nmove = gets.strip
  # Convert user input to index
  nmovei = input_to_index(nmove)
  while !valid_move?(board,nmovei)
    puts "Oops. Try again."
    puts "Please enter 1-9:"
    nmove = gets.strip
    # Convert user input to index
    nmovei = input_to_index(nmove)
  end
  move(board,nmovei,"X")
  display_board(board)
end

# code your #valid_move? method here
def valid_move?(board,index_number)
  if !index_number.between?(0,8)
  #if index_number>8 || index_number<0
    # error, bad choice
    return false
  elsif position_taken?(board,index_number)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index_number)
  # do some error checking
  #if index_number>9 || index_number<0
  #  return true
  #else
  if board[index_number] == nil
    return false
  elsif board[index_number]=="" || board[index_number]==" "
      return false
  else
    return true
  end
end

# display the current tic tac toe board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(nextmove)
  nextmovei = nextmove.to_i - 1
end

def move(board,index,player="X")
  board[index] = player;
end
