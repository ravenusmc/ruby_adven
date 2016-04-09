#This file is just for working on some algorithms in Ruby. 

#How to find the average in an array. 
# def aver(array)
#   total = 0 
#   array.each do |f|
#     total = total + f
#   end 
#   average = (total / array.length).to_f
#   return average 
# end 

# puts aver([1,2,3,4])

#How to find a specific value in an array 
# array = [200,3,500,150,7,8,134,234,56,77]

# num = 8

# found = false 

# index = 0

# puts "What value do you want to look for?"
# index = gets.chomp.to_i

# while found == false && index <= array.length - 1 
#   if array[index] == num 
#     found == true 
#   else 
#     index = index + 1
#     puts "Your value of #{num} was found at position #{array[index]}"
#   end 
# end 

#totaling the values in an array

def aver(array)
  total = 0 
  array.each do |f|
    total = total + f
  end 
  return total
end 

puts aver([1,2,3,4,2])



