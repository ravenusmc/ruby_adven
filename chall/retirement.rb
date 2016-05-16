#In this exercise I have to make a program that will ask for user input on their current age, and what
#age they would like to retire at. The problem will then tell them what year they can retire at. 

puts "What is your current age? "
age = gets.chomp.to_i
puts "At what age would you like to retire at?"
retire = gets.chomp.to_i
years = retire - age 
puts "You have #{years} years left until you can retire."
current_year = Time.new.year
retire_year = current_year + years
puts "It's #{current_year}, so you can retire in #{retire_year}"
