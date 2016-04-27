#First Challenge in my exercises for programmers book. This is the description: 
#Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
#The program must compute the tip and then display both the tip and the total amount of the bill. 

#Input: bill amount, tip rate 
#process: calculate the tip based on the bill amount. Add the tip amount to the bill amount for a total.
#Output: Total, tip amount. 

puts "Please enter the bill amount:"
bill = gets.chomp.to_f
puts "Please enter the tip amount: "
tip = gets.chomp.to_f

tipAmount = bill * tip 
total = bill + tipAmount 

puts "Your total bill is #{total} which is based off of the #{tipAmount} tip amount!"
puts "Please shop with us again!"
