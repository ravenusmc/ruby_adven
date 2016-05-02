#Create a program that prompts for an input string and displays out that shows the input string
#and the number of characters the string contains. 

#Example: What is the input string? Homer => Homer has 5 characters. 

puts "What is the input string?"
word = gets.chomp.to_s
puts "#{word} has #{word.length} characters"

