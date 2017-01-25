def display_board(board)
      puts "   ""|" "   " "|" "   "
      puts "-----------"
      puts "   ""|" "   " "|" "   "
      puts "-----------"
      puts "   ""|" "   " "|" "   "
end


# code your #valid_move? method here
def valid_move?(board,index)
    index = index.to_i

    if position_taken?(board, index) == false && index.between?(0,8) == true
        return true

    else
        return false

    end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
      index = index.to_i
        if board[index] == " " || board[index] == "" || board[index] == nil
            return false
        else
            return true
        end
    end


def display_board(board)
      puts " #{board[0]} | #{board[1]} | #{board[2]} "
      puts "-----------"
      puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
    end

    # code your input_to_index and move method here!
def move(board, pos, char = "X")
      
        board[pos] = char
    end

def input_to_index(pos)
        index = pos.to_i
        index = index - 1

    end

def turn(board)
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
    while valid_move?(board,index) == false

      puts "Please enter 1-9:"
      index = gets.strip
      index = input_to_index(index)
    end

    move(board,index,char="X")
    display_board(board)

end
