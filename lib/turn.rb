def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    return false
  else return true
  end
end

def valid_move?(array, index)
  index.between?(0, 8) && !position_taken?(array, index)  ? true : false
end

def turn(array)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !position_taken?(array, index) && valid_move?(array, index)
    move(array, index)
    display_board(array)
  else
    puts "Please enter valid input"
    turn(array)
  end
end
