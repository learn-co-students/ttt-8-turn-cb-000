def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end


def move(array,index,value = "X")
  array[index] = value
  array
end

def position_taken?(board, ind)
  # assumptions: board is an array
  # i is an integer
  if board[ind] == " " or board[ind] == "" or board[ind] == nil
    false
  elsif board[ind] == "X" or board[ind] == "O"
    true
  else
    false
  end
end

def valid_move?(board,ind)
 if ind.between?(0,8)
    true
  else
    false
  end
  if !position_taken?(board, ind) && ind.between?(0,8)
    true
  else
    false
  end

end


def position_taken?(board, ind)
  # assumptions: board is an array
  # i is an integer
  if board[ind] == " " or board[ind] == "" or board[ind] == nil
    false
  else board[ind] == "X" or board[ind] == "O"
  end
end

def valid_move?(board,ind)
 if ind.between?(0,8)
    true
  else
    false
  end
  if !position_taken?(board, ind) && ind.between?(0,8)
    true
  else
    false
  end

end

def turn(board)
  keep_looping  = true
  while keep_looping == true do
    puts "Please enter 1-9:"
    input = gets.chomp
    x = input_to_index(input)

    if valid_move?(board,x) == true
      puts "#{board[x]}"
      move(board,x)
      display_board(board)
      keep_looping = false
      break

    end
  end
end
