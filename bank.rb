def main 
  puts "Welcome to Mikes Bank"
  puts "--------------------------------"
  puts "What would you like to do?"
  puts "1. deposit money"
  puts "2. withdraw money"

  choice = gets.chomp.to_i
  if choice == 1
    deposit
  end 
end 

def deposit
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
end 

main 