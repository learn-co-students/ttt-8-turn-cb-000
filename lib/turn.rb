




def display_board (board)


  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(input)

  input.to_i - 1

end



def valid_move? (board,index)

  if ((index >= 0) && (index <=8) && board[index]==" ")
    true
  else
    false
  end

end

def move(board,index,selection="X")

  board[index]=selection
  display_board (board)

end

def turn(board)

  invalid=true


  while invalid
    puts "Please enter 1-9:"
    input=gets
    index=input_to_index(input)
    invalid=!valid_move?(board,index)

  end

    move(board,index)


end

def position_taken?

end
