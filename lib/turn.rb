def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
 number= user_input.to_i
 index = number-1


end
# code your input_to_index and move method here!

board = ["","","","","","","","","",]

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     return false
  elsif board[index] == "X" || board[index] =="O"
     return true
  end
end

def  valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8)
    return true
  elsif position_taken?(board,index) == true && index.between?(0,8)
    return false
  end
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def move(array,index,value="X")
  update_array_at_with(array,index,value)
  display_board(array)
end


def turn(board)
  puts("Please enter 1-9:")
  raw_input= gets.chomp
  index1 = input_to_index(raw_input)
  if  valid_move?(board,index1) == true
      move(board,index1)
      display_board(board)
  else
    puts("Please enter 1-9:")
    raw_input= gets.chomp
    index1 = input_to_index(raw_input)
  end











end
