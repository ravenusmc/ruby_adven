#Make a program that takes a quote from the user and the indiviudal that said the quote. Then have
#the program print out the quote. 

#Example: What is the quote: "Don't ask what your country..." Who said it: JFK, JFK says, "Don't..."

print "What is the quote? "
quote = gets.chomp.to_s
print "Who said the quote? "
person = gets.chomp.to_s
puts "#{person} says, '#{quote}' "