def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
  else
    loop do
      puts "invalid"
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)
      if valid_move?(board, index) == true
        move(board, index, "X")
        break
      end
    end
  end
  display_board(board)
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  elsif position_taken?(board, index) == true
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move (board, index, value = "X")
  board[index] = value
end
