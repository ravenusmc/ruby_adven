def main 
  puts "Welcome to Mikes game collection"
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. Open an account"
  puts "2. Exit the program"

  account = []

  choice = gets.chomp.to_i
  if choice == 1
    open
  end 
end 

def open(account)
  puts "You have opened an account."
  puts "What would you like to name the account?"

  name = gets.chomp.to_s
  account.push(name)
  puts account 

end 

main 
