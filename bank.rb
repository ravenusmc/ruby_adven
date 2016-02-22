def main

  puts "Welcome to Mikes Bank"

  balance = 0 

  month = 0

  rate = 0 

  main_menu(balance, month, rate)

end 

def main_menu(balance, month, rate)
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. Deposit money"
  puts "2. Withdraw money"
  puts "3. Check balance"
  puts "4. Invest"

  choice = gets.chomp.to_i
  if choice == 1
    deposit(balance, month, rate)
  elsif choice == 2
    withdraw(balance, month, rate)
  elsif choice == 3
    check_balance(balance, month, rate)
  elsif choice == 4
    invest(balance, month, rate)
  end 
end 

def deposit(balance, month,rate)
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
    month = month + 1 
  end 
  puts balance
  puts month 

  puts "What would you like to do:"
  puts "1. Return to main menu"
  puts "2. Withdraw Money"

  choice2 = gets.chomp.to_i
  if choice2 == 1
    main_menu(balance, month, rate)
  elsif choice2 == 2
    withdraw(balance, month, rate)
  end 
end 

def withdraw(balance, month, rate)
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
    main_menu(balance, month, rate)
  elsif choice2 == 2
    withdraw(balance, month, rate)
  elsif choice2 == 3
    check_balance(balance, month, rate)
  end 
end 

def check_balance(balance, month, rate)
  puts `clear`
  puts "Your balance is the following:"
  puts "---------------------------"
  print "$"
  puts balance
  puts "---------------------------"
end 

def invest(balance, month, rate)
  puts "Do you want to invest your money at a 0.1% rate?(y/n)"
  choice = gets.chomp.to_s

  if choice == 'y'
    puts "Here you go to make money!"
    while choice == 'y'
      month = month + 1 
      
  end 

main

























