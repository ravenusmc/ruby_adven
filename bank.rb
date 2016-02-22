def main

  puts "Welcome to Mikes Bank"

  balance = 0 

  count = 0

  main_menu(balance, count)

end 

def main_menu(balance, count)
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. Deposit money"
  puts "2. Withdraw money"
  puts "3. Check balance"

  choice = gets.chomp.to_i
  if choice == 1
    deposit(balance, count)
  elsif choice == 2
    withdraw(balance, count)
  elsif choice == 3
    check_balance(balance, count)
  end 
end 

def deposit(balance, count)
  puts `clear`
  puts "How much would you like to deposit?"
  add_money = gets.chomp.to_f 
  balance = balance + add_money  
  puts "Would you like to deposit more money?(y/n)"
  choice = gets.chomp.to_s
  while choice != 'n'
    puts "How much would you like to deposit?"
    add_money = gets.chomp.to_f
    balance = balance + add_money 
    puts "Would you like to deposit more money?(y/n)"
    choice = gets.chomp.to_s
    count = count + 1 
  end 
  puts balance
  puts count 

  puts "What would you like to do:"
  puts "1. Return to main menu"
  puts "2. Withdraw Money"

  choice2 = gets.chomp.to_i
  if choice2 == 1
    main_menu(balance, count)
  elsif choice2 == 2
    withdraw(balance, count)
  end 
end 

def withdraw(balance, count)
  puts `clear`
  puts "How much money would you like to withdraw?"
  sub_amount = gets.chomp.to_f
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
    main_menu(balance, count)
  elsif choice2 == 2
    withdraw(balance, count)
  elsif choice2 == 3
    check_balance(balance, count)
  end 
end 

def check_balance(balance)
  puts `clear`
  puts "Your balance is the following:"
  puts "---------------------------"
  print "$"
  puts balance
  puts "---------------------------"
end 

main

























