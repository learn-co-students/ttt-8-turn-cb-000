def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def valid_move?(board, idx)
  if (idx.between?(0,8) == true) && (position_taken?(board, idx) == true)
    return false
  elsif (idx.between?(0,8) == true) && (position_taken?(board, idx) == false)
    return true
  else
    return false
  end
end

def position_taken?(board, idx)
  if board[idx] == nil || board[idx] == "" || board[idx] == " "
    return false
  elsif board[idx] == "X" ||  board[idx] == "O"
    return true
  end
end

def input_to_index(num)
  num = num.to_i - 1
  return num
end

def move(board, pos, sym="X")
  board[pos] = sym
  return board[pos]
end

def turn(board)
    puts "Please enter 1-9:"
    num = gets.strip
    index = input_to_index(num)

    if valid_move?(board, index) == true
      move(board, index)
      display_board(board)
    else
      until valid_move?(board, index) == true
        display_board(board)
        turn(board)
        return "invalid"
      end
    end
end
