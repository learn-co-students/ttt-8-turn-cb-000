
def valid_move? (board, index)
  if (position_taken?(board, index) && index.between?(0,8)) || (index.between?(0,8) == false)
    false
 else (position_taken?(board,index) == false) && (index.between?(0,8))
    true
    end
end
def position_taken?(board, index)
    if board[index] == "  " || board[index] == "" || board[index] == nil
       false
   elsif board[index] == "X" || board[index] == "O"
     true
end
end

  def input_to_index (input)
  input = input.to_i
  input - 1
  end

  def move (board, index, char = "X")
   puts display_board(board)
   puts board[index] = char
  end

  def update_array_at_with(array, index, value = "X")
    board[0] = value
  end

  board=["   ","   ","   ","   ","   ","   ","   ","   ","   ",]
  def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end
  display_board(board)


  def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index (input)
      if valid_move?(board, index)
        true
          move(board, index, char = "X")
          display_board(board)
              else turn(board)
  end
end
