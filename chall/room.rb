#Exercise 7: In this exercise I have to create a program that calculates the area of a room. 
#I am tasked with asking the user for the length and width of the room then I will have to display
#The size of the room in both square feet and square meters.

#Input-length, width Output will be square feet and meters.

CONST_val = 10.76391

puts "What is the length of the room in feet? "
length = gets.chomp.to_i

puts "What is the width of the room in feet? "
width = gets.chomp.to_i

puts "You entered dimensions of #{length} feet by #{width} feet."
puts "The area is: "

feet = length * width 
puts "#{feet} square feet"

meters = feet / CONST_val
puts "#{meters} square meters"








