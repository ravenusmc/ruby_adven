def main

  puts "Welcome to Mikes Bank"

  balance = 0 

  main_menu(balance)

end 

def main_menu(balance)
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. deposit money"
  puts "2. withdraw money"
  puts "3. checkbalance"

  choice = gets.chomp.to_i
  if choice == 1
    deposit
  end 
end 

def deposit
  puts `clear`
  puts "How much would you like to deposit?"
  balance = 0 
  add_money = gets.chomp.to_i 
  balance = balance + add_money  
  puts "Would you like to deposit more money?(y/n)"
  choice = gets.chomp.to_s
  while choice != 'n'
    puts "How much would you like to deposit?"
    add_money = gets.chomp.to_i
    balance = balance + add_money 
    puts "Would you like to deposit more money?(y/n)"
    choice = gets.chomp.to_s
  end 
  puts balance

  puts "What would you like to do:"
  puts "1. Return to main menu"
  puts "2. Withdraw Money"

  choice2 = gets.chomp.to_i
  if choice2 == 1
    main_menu(balance)
  elsif choice2 == 2
    withdraw(balance)
  end 
end 

main