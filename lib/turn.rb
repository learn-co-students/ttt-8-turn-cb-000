def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
      true
    end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

def input_to_index(input)
   s = input.to_i
   s - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  i = gets.strip
  index = input_to_index(i)
  m = valid_move?(board, index)
  if m == true
    move(board, index, char="X")
  else m == false
    until m == true
      puts "Sorry, that was an invalid move. Please enter 1-9:"
      i = gets.strip
      index = input_to_index(i)
      m = valid_move?(board, index)
      move(board, index, char="X")
    end
  end
  display_board(board)
end
