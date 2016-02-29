def display_board(board)
  puts " #{board[0]} |#{board[1]}|#{board[2]}"
  puts "___________"
  puts " #{board[3]} |#{board[4]}|#{board[5]}"
  puts "___________"
  puts " #{board[6]} |#{board[7]}|#{board[8]}"
end 

board = ["X "," O "," X ","  ","  ","   ","  ","  ","  "]
display_board(board)

# puts "Where do you want to place a mark?"
# puts "please choose a number 1-9"
# choice = gets.chomp.to_i
# if choice == 1 
#   board[1].push(X)
# end 