
  def display_board(board)
    puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
  end

  def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    box = input_to_index(user_input)
    if valid_move?(board, box)
      move(board, box)
    else
      turn(board)
    end
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(board, index, value = 'X')
    board[index] = value
    display_board(board)
  end

  def valid_move?(board, index)
    if index.between?(0, 8) && !position_taken?(board, index)
      true
    else
      false
    end
  end

  def position_taken?(board, index)
    if board[index] == "X" || board[index] == "O"
      true
    elsif board[index] == " " || board[index] == ""
      false
    end
  end
