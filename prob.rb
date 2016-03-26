############ Max Min problem-get a series of numbers and then tell the user the max and min numbers 
#entered into the program. #######################

####### Problems from my Programming Logic and Design Book Chapter six Problem 2 #########

def feetToInches()
  puts "Please enter the number of feet to convert to inches"
  feet = gets.chomp.to_i
  inches = feet * 12
  puts "#{feet} feet is equal to #{inches} inches!"
end 

feetToInches()



########### Problem that gives the user lowest and highest in a sequence of numbers ######

# puts "Please enter a number"
# num = gets.chomp.to_i
# max = num 
# min = num 

# while num != -99 
#   puts "Please enter a number"
#   num = gets.chomp.to_i

#   if num == -99
#   elsif num > max 
#     max = num  
#   elsif num < min 
#     min = num 
#   end 
# end 

# puts max 
# puts min 

################## Way to reverse a  string and test iff it is a palidrome #################
# puts "Please give me a word to see if it is a palidrome"
# word = gets.chomp

# if word == word.reverse 
#   puts "word is a palidrome"
# else 
#   puts "word is not a palidrome"
# end 

################## Same exercise with a method #########################
# def palidrome(word)
#   if word == word.reverse 
#     puts "Word is a palidrome"
#   else
#     puts "word is not a palidrome"
#   end 
# end 

# palidrome("Mike")
