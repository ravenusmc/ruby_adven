def main 
  puts "Welcome to Mikes game collection"
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. Open an account"
  puts "2. Exit the program"

  account = []

  games = []

  choice = gets.chomp.to_i
  if choice == 1
    open(account, games)
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
  end
end 

main 
