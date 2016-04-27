#First Challenge in my exercises for programmers book. This is the description: 
#Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
#The program must compute the tip and then display both the tip and the total amount of the bill. 

#Input: bill amount, tip rate 
#process: calculate the tip based on the bill amount. Add the tip amount to the bill amount for a total.
#Output: Total, tip amount. 

def valid(bill)
    if bill < 0 
      return false 
    else 
      return true 
    end 
end 

total = 0
tipAmount = 0

puts "Please enter the bill amount:"
bill = gets.chomp.to_f
while !valid(bill)
  puts "Please enter a number greater than 0"
  bill = gets.chomp.to_f
end 
puts "Please enter the tip amount: "
tip = gets.chomp.to_f

tipAmount = bill * tip 
total = bill + tipAmount 

puts "Your total bill is #{total} which is based off of the #{tipAmount} tip amount!"
puts "Please shop with us again!"

#Basic warm up excerise from book. Create a program that asks the user for their name and then 
#greets them. 

# puts "What is your name?"
# name = gets.chomp
# puts "Hello, #{name}, nice to meet you!"
