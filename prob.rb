####### Problems from my Programming Logic and Design Book Chapter Five Problem 1 #########

total = 0
i = 1

puts "How many bugs did you catch today?"
num = gets.chomp.to_i

while i <= 7
  puts "How many bugs did you catch today?"
  num = gets.chomp.to_i
  total = total + num 
  i++
end 



####### Problems from my Programming Logic and Design Book Chapter six Problem 5 #########

# puts "Please enter the falling time, in seconds, of an object"
# time = gets.chomp.to_i

# def fallingDistance(time)
#   puts "In #{time} seconds the object fell the following amount of meters:"
#   distance = 0.5 * 9.8 * time ** 2
#   puts "The object fell #{distance} meters"
# end 

# fallingDistance(time)

####### Problems from my Programming Logic and Design Book Chapter six Problem 4 #########

# puts "Please enter the first number"
# first = gets.chomp.to_i
# puts "Please enter a second number"
# second = gets.chomp.to_i

# def determine(first, second)
#   if first > second 
#     puts "The first number is larger"
#   else 
#     puts "The second number is larger"
#   end 
# end 

# determine(first, second)

####### Problems from my Programming Logic and Design Book Chapter six Problem 3 #########

# num1 = rand(10)
# num2 = rand(10)

# answer = num1 + num2 

# puts "This program will display two random numbers and ask you to add them together"
# puts "Here are the numbers:"
# puts num1
# puts num2 
# puts "Will you please enter your answer:"
# ans = gets.chomp.to_i
# if ans == answer 
#   puts "Yay! You got it right!"
# else 
#   puts "You got it wrong!"
# end 

####### Problems from my Programming Logic and Design Book Chapter six Problem 2 #########

# def feetToInches()
#   puts "Please enter the number of feet to convert to inches"
#   feet = gets.chomp.to_i
#   inches = feet * 12
#   puts "#{feet} feet is equal to #{inches} inches!"
# end 

# feetToInches()

############ Max Min problem-get a series of numbers and then tell the user the max and min numbers 
#entered into the program. #######################

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
