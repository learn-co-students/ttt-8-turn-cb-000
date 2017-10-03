#!/usr/bin/env ruby


def display_board(board)
puts" #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts" #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts" #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end



def position_taken?(array, index)
  if ("#{array[index]}" == " " || "#{array[index]}" == "" || "#{array[index]}" == nil )
    false
  else
    true
  end
end



def input_to_index(user_input)
    "#{user_input}".chomp.to_i - 1
    end



def move(array, position, char = "X")
    array[position] = char
    end

def turn(board)
  puts "Please enter 1-9:"
  move = input_to_index(gets.strip)
  if valid_move?(board, move)
    move(board, move)
    display_board(board)
  else
    puts "Please enter 1-9:"
    move = input_to_index(gets.strip)
end
end
