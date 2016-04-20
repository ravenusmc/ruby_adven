def display_board(board)
  puts " #{board[0]}|#{board[1]}|#{board[2]}"
  puts "___________"
  puts "#{board[3]}|#{board[4]}|#{board[5]}"
  puts "___________"
  puts " #{board[6]}|#{board[7]}|#{board[8]}"
end 

  puts " 1 | 2 | 3 "
  puts "___________"
  puts " 4 | 5 | 6 "
  puts "___________"
  puts " 7 | 8 | 9 "

board = ["  ","   ","  ","  ","  ","  ","  ","   ","  "]

# ai = rand(1..9)
# board[ai] = " O "

puts "Do you want to play tic tac toe?(y/n)"
play = gets.chomp.to_s

while play != "n"
  puts " Player one, based on the board above, where do you want to put an X?"
  choice = gets.chomp.to_i
  if choice == 1 
    board[0] = "X "
  elsif choice == 2
    board[1] = " X "
  elsif choice == 3
    board[2] = " X " 
  elsif choice == 4 
    board[3] = " X "
  elsif choice == 5
    board[4] = " X "
  elsif choice == 6
    board[5] = " X "
  elsif choice == 7
    board[6] = " X "
  elsif choice == 8 
    board[7] = " X "
  elsif choice == 9
    board[8] = " X " 
  end
  display_board(board)

  puts " Player Two, based on the board above, where do you want to put an O?"
  choice = gets.chomp.to_i
  if choice == 1 
    board[0] = "O "
  elsif choice == 2
    board[1] = " O "
  elsif choice == 3
    board[2] = " O " 
  elsif choice == 4 
    board[3] = " O "
  elsif choice == 5
    board[4] = " O "
  elsif choice == 6
    board[5] = " O "
  elsif choice == 7
    board[6] = " O "
  elsif choice == 8 
    board[7] = " O "
  elsif choice == 9
    board[8] = " O " 
  end
  display_board(board)

  if board[0] == "X " && board[1] == " X " 
    puts "You won!"
  end 

  puts "Do you want to play tic tac toe?(y/n)"
  play = gets.chomp.to_s

end 





    


