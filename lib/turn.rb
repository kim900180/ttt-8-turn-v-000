def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = "------------"
  row3 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row4 = "------------"
  row5 = " #{board[6]} | #{board[7]} | #{board[8]} "

  puts row1 + "\n" + row2 + "\n" + row3 + "\n" + row4 + "\n" + row5
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
end

def input_to_index(user_input)
  index = "#{user_input}".to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif position_taken?(board, index) == false
    true
  elsif index.between?(0, 8) == true
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
