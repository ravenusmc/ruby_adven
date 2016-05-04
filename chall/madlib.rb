#Create a simple mad-lib program that prompts for a noun, a verb an adverb and an 
#adjetive which will inject those into a story that you create. 

puts "Please enter a noun: "
noun = gets.chomp.to_s
puts "Please enter a verb: "
verb = gets.chomp.to_s
puts "Please enter an adjective: "
adjective = gets.chomp.to_s
puts "Please enter an adverb"
adverb = gets.chomp.to_s

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? Is that funny? Does it make sense?"

#Well there is also a constraint to see if it can be done with few output statements. 