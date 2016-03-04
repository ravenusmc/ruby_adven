#Max Min problem-get a series of numbers and then tell the user the max and min numbers 
#entered into the program. 

puts "Please enter a number"
num = gets.chomp.to_i
max = num 
min = num 

while num != -99 
  puts "Please enter a number"
  num = gets.chomp.to_i

  if num == -99
  elsif num > max 
    max = num  
  elsif num < min 
    min = num 
  end 
end 

puts max 
puts min 