def display_board(arr)
  puts " #{arr[0]} | #{arr[1]} | #{arr[2]} "
  puts "-----------"
  puts " #{arr[3]} | #{arr[4]} | #{arr[5]} "
  puts "-----------"
  puts " #{arr[6]} | #{arr[7]} | #{arr[8]} "
end

def position_taken?(board, index)
  board[index] != " "
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0, 8)
    if !position_taken?(board, index)
      true
    end
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value="X")
  array[index.to_i] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  stuff = input_to_index(input)
  if valid_move?(board, stuff)
    move(board, stuff)
    display_board(board)
  else
    turn(board)
  end
end
