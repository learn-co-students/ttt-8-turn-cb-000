def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] != " "
end

def input_to_index(userInput)
  userInput.to_i - 1
end

def move (array, index, character = "X")
  array[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
    userInput = gets.strip
    index = input_to_index(userInput)
    if valid_move?(board, index)
      move(board, index)
    else
      puts "That is an invalid move, try again!"
      turn(board)
    end
    display_board(board)
end
