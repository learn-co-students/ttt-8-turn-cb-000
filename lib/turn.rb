def display_board(board)
    puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
    puts("-----------")
    puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
    puts("-----------")
    puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)
    index = user_input.to_i
    index -=  1
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
        return false
    elsif board[index] == "X" || board[index] == "O"
        return true
    elsif board[index].nil?
        return false
    end
end

def valid_move?(board, index)
    if !((0..8).include?(index))
        return false
    end
    if position_taken?(board,index)
        return false
    end

    return true
end

def move(board, index, value = "X")
    board[index] = value
    return board
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)

    if valid_move?(board, index)
        move(board,index)
        display_board(board)
    else
        turn(board)
    end
end
