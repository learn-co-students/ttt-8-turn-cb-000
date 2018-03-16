# Method to display board and show current state of board to player
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Method to convert user_input to an integer and zero based array index (0-8)
def input_to_index(input)
  converted_input = input.to_i - 1
end

# Method set the index value/position within the board equal to the token
def move(board,index,token = 'X')
  board[index] = token
end

# Method for evaluating the user's input against the TTT board
# and checking whether or not that position is occupied
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

# Method that return true if the index is within the correct 0-8 range AND is inoccupied
# by an X or O token
def valid_move?(board,index)
  # position in the board (true) AND position NOT occupied (true)
  if index.between?(0, 8) && !position_taken?(board,index)
    true
  # Position in the board (false) OR position occupied (true)
  elsif index.between?(0, 8) || position_taken?(board,index)
    false
  end
end

# Method
def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    #If the move is valid, make the move and display the board to the user.
    if valid_move?(board,index)
      move(board,index,token = 'X')
      display_board(board)
      #If the move is invalid, ask for a new move until a valid move is received.
    else
      turn(board)
    end
end
