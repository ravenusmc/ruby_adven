def display_board(board)
  puts " #{board[0]}|#{board[1]}|#{board[2]}"
  puts "___________"
  puts " #{board[3]}|#{board[4]} |#{board[5]}"
  puts "___________"
  puts " #{board[6]}|#{board[7]} |#{board[8]}"
end 

  puts " 1 | 2 | 3 "
  puts "___________"
  puts " 4 | 5 | 6 "
  puts "___________"
  puts " 7 | 8 | 9 "

board = ["  ","   ","   ","  ","  ","   ","  ","  ","  "]
puts "Based on the board above, where do you want to put an X?"
choice = gets.chomp.to_i
if choice == 1 
  board[5] = "X"
end
puts board
display_board(board)

    


