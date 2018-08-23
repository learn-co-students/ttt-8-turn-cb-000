#Main method, turn method
def turn(board)
  cond_main = 1
  while (cond_main == 1)
    puts "Please enter 1-9:"
    temp1 = gets.strip
    temp2 = input_to_index(temp1)
    if(temp2 >= 0)
      cond1 = valid_move?(board,temp2)
      if(cond1 == true)
        move(board, temp2)
        cond_main = 0
      end
    end
  end
end


#Helper methods
def display_board(board)
  puts " "+board[0]+" " + "|" + " "+board[1]+" " + "|" + " "+board[2]+" "
  puts "-----------"
  puts " "+board[3]+" " + "|" + " "+board[4]+" " + "|" + " "+board[5]+" "
  puts "-----------"
  puts " "+board[6]+" " + "|" + " "+board[7]+" " + "|" + " "+board[8]+" "
end

def valid_move?(board, board_pos)
  myboard = board
  myboard_pos = board_pos
  cond1 = position_taken?(myboard, myboard_pos)
  if(myboard_pos >= 0 && myboard_pos <=8)
    if(cond1 == false)
      return true
    else
      return false
    end
  else
    return false
  end
end

def position_taken?(board, board_pos)
  temp = board[board_pos]
  if(temp == " " || temp == "" || temp == nil)
    return false
  else
    return true
  end
end

def move(board, user_pos, board_char = "X")
  board[user_pos] = board_char
  display_board(board)
end

def input_to_index(board_pos)
  if(board_pos == "1")
    temp1 = 1
  elsif(board_pos == "2")
    temp1 = 2
  elsif(board_pos == "3")
    temp1 = 3
  elsif(board_pos == "4")
    temp1 = 4
  elsif(board_pos == "5")
    temp1 = 5
  elsif(board_pos == "6")
    temp1 = 6
  elsif(board_pos == "7")
    temp1 = 7
  elsif(board_pos == "8")
    temp1 = 8
  elsif(board_pos == "9")
    temp1 = 9
  else
    temp1 = 0
  end
  temp2 = temp1 - 1
  return temp2
end
