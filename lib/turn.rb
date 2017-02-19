def display_board(array)
    puts " #{array[0]} | #{array[1]} | #{array[2]} "
    puts "-----------"
    puts " #{array[3]} | #{array[4]} | #{array[5]} "
    puts "-----------"
    puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  elsif position_taken?(board, index) || !index.between?(0,8)
    return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index]==" " || board[index]=="" || board[index]==nil
    return false
  elsif board[index]=="X" || board[index]=="O"
    return true
  end
end

def input_to_index(num)
  num = num.to_i
  num = num - 1
  return num
end

def move(board, position, character = "X")
  board[position]=character
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character="X")
    display_board(board)

  elsif !valid_move?(board, index)
    until valid_move?(board, index)
    puts "invalid move! Please enter 1-9:"
    display_board(board)
    input=gets.strip
    index=input_to_index(input)
    end


  end


end
