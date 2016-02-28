def main 
  puts "Welcome to Mikes game collection"
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. Open an account"
  puts "2. Exit the program"
  puts "3. 99 bottles of beer on the wall"

  account = []

  games = []

  choice = gets.chomp.to_i
  if choice == 1
    open(account, games)
  elsif choice == 3
    bottles
  end 
end 

def open(account, games)
  puts "You have opened an account."
  puts "What would you like to name the account?"

  name = gets.chomp.to_s
  account.push(name)

  puts "Would you like to put a game into the database?"
  choice = gets.chomp.to_s

  if choice == 'y'
    game(account, games)
  else choice == 'n'
    main 
  end
end 

def game(account, games)

  puts "Would you like to put in a game into the database?"
  choice = gets.chomp.to_s
  while choice == 'y'
    puts "Please enter the name of the game you would like to place into the database"
    game = gets.chomp.to_s
    games.push(game)
    puts "Would you like to put in a game into the database?"
    choice = gets.chomp.to_s
  end 

  games.each do |game|
    puts "Here is each game: " + game 
  end 
end 

def bottles 
  puts "Yeah I know, this does not have much to do with this program but a personal challenge for me!"
  puts "Would you like to run the 99 bottles of beer on the wall program?"
  choice = gets.chomp.to_s
  if choice == 'y'
    count = 99
    while count != 95 
      puts  count.to_s + " bottles of beer on the wall"
      count = count - 1
      puts "Take one down pass it around"  
      puts count.to_s + " bottles of beer on the wall!" 
    end 
  end 

end 

main 
