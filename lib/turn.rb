# displays tic tac toe board
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end


#coverts a user's place on the board to the index integer
  def input_to_index(input)
    input.to_i - 1
  end


# checks the number to see if the position is already taken and if it's an actual number

  def valid_move?(board, index)
    def position_taken?(array, user)
      if array[user] == " " || array[user] == "" || array[user] == nil
        return false
      else
        return true
      end
    end

    def on_board?(num)
      if num.between?(0, 8)
        return true
      else
        return false
      end
    end

    if (position_taken?(board, index)) == false && (on_board?(index) == true)
      return true
    else
      return false
    end
  end

#takes a users num and the board and placed the X or O char in the position_taken
def move(board, input, value = "X")
  board[input] = value
end

#asks user for a number, check if valid, if not, recursively continues to ask for a number
def turn (board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
