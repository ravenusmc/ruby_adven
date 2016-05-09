#create a program that prompts the user for two numbers. Take this numbers and show their sum, 
#product, quotient and difference of those numbers. 

#I will be making this program with methods just to 'spice it up'

def main
  one = first_number
  two = second_number
  addit(one, two)
end 

def first_number
  puts "What is the first number?"
  num1 = gets.chomp.to_i
  return num1
end

def second_number
  puts "What is the second number?"
  num2 = gets.chomp.to_i
  return num2
end 

def addit(one, two)
  first = one + two
  second = one - two
  third = one * two
  fourth = one / two
  puts "#{one} + #{two} = #{first} " 
  puts "#{one} - #{two} = #{second}"
  puts "#{one} * #{two} = #{third}"
  puts "#{one} / #{two} = #{fourth}"
end

main
