def main

  puts "Welcome to Mikes Bank"

  balance = 0 

  main_menu(balance)

end 

def main_menu(balance)
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. Deposit money"
  puts "2. Withdraw money"
  puts "3. Check balance"

  choice = gets.chomp.to_i
  if choice == 1
    deposit(balance)
  elsif choice == 2
    withdraw(balance)
  elsif choice == 3
    balance(balance)
  end 
end 

def deposit(balance)
  puts `clear`
  puts "How much would you like to deposit?"
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

def withdraw(balance)
  puts `clear`
  puts "How much money would you like to withdraw?"
  sub_amount = gets.chomp.to_i
  balance = balance - sub_amount
  if balance == 0 
    puts "You cannot take out money since you have none!"
  end

  puts "What would you like to do:"
  puts "1. Return to main menu"
  puts "2. Withdraw Money"
  puts "3. Check Balance"

  choice2 = gets.chomp.to_i
  if choice2 == 1
    main_menu(balance)
  elsif choice2 == 2
    withdraw(balance)
  elsif choice2 == 3
    balance(balance)
  end 
end 

def balance(balance)
  puts `clear`
  puts "Your balance is the following"

main

























