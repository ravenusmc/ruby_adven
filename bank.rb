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

end 

main 