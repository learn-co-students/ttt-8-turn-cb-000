## Displays the Tic Tac Toe Board
def display_board board
    puts " "+ board[0] +" | " + board[1]+ " | " + board[2] + " "
    puts "-----------"
    puts " "+ board[3] +" | " + board[4]+ " | " + board[5] + " "
    puts "-----------"
    puts " "+ board[6] +" | " + board[7]+ " | " + board[8] + " "
end

## Determine if the selected position is taken
def position_taken? board,index
  if index.between?(0,8)
    if board[index] == nil || board[index] == false || board[index] == "" || board[index] == " "
      true
    else
      false
    end
  end
end

## Determine if the player move is valid
def valid_move? board,index
  if position_taken?(board,index) == true
    true
  else
    false
  end
end

## Allows player to make a move
def move board,index,token = "X"
  board[index] = token
end

## Converts a string to an integer
def input_to_index index
  user_input = index.to_i
  user_input -= 1
end

## Execute a player turn
def turn board
  puts "Please enter 1-9:"
  input = gets.strip
  user_input = input_to_index(input)

  if valid_move?(board,user_input)
    move(board, user_input)
    display_board(board)
  else
    while user_input.between?(0,8) == false
      puts "Please enter 1-9:"
      input = gets.strip
      user_input = input_to_index(input)
    end
  end
end
