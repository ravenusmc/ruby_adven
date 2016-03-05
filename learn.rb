def main
  puts "Please give me a number"
  number = gets.chomp.to_i
  puts "What would you like to do with the number?"
  puts "1. Add Two to number"
  puts "2. Add three to number"
  choice = gets.chomp.to_i
  if choice == 1
    addTwo(number)
  elsif choice == 2
    second_choice
  end 
end

def addTwo(number)
  puts `clear`
  puts "adding two to number"
  number = number + 2
  puts number
end 


main


