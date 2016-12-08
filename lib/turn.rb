#user input to int -1 to get array[index] number
def input_to_index(user_input)
  user_input.to_i - 1
end

#should return true if space occupied by X or O
#can also handle lowercase input
def position_taken?(board,index)
  board[index].upcase == "X" || board[index].upcase == "O"
end

#should return true if index is between 0-8 and NOT occupied
def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board,index)
end

#display the current state of the board, in this case for console
def display_board(board)
  puts " #{board[0] } | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3] } | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6] } | #{board[7]} | #{board[8]} "
end

#should accept board,index and token to player symbol (x/o) with default value of x, it should set the correct index value of board to that symbol
def move(board,index,token = "X")
  board[index] = token
end

#main method that does complete round for ttt
def turn(board)
  #ask for user input # 1-9
  puts "Please enter 1-9:"
  #get input and convert to int
  index = input_to_index(gets.strip)
  #if not valid move reprompt for more input
  if !valid_move?(board,index)
    turn(board)
  else
    #make the move
    move(board,index)
    display_board(board)
  end


end
