
def turn(board)
      while true
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
        break if valid_move?(board, index)
      end  
      move(board, index, value = "X")
      display_board(board)
    
end

def valid_move?(board, index)
  return false if index == -1
    if board[index] == " "
      true
    else
      false
    end    
end


def position_taken?(board, index)
  
  if board[index] == " " || board[index] == "" || board[index] == nil 
    false
  else
    true
  end    
  
end  

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    if input.to_i != 0
      input.to_i - 1
    else
      -1
    end
end

def move(board, index, value = "X")
    board[index] = value
end

def input_to_index(input)
    if input.to_i != 0
      input.to_i - 1
    else
      -1
    end
end