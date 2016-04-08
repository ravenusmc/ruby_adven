#This file is just for working on some algorithms in Ruby. 

#How to find the average in an array. 
def aver(array)
  total = 0 
  array.each do |f|
    total = total + f
  end 
  average = (total / array.length).to_f
  return average 
end 

puts aver([1,2,3,4])

#How to find a specific value in an array 

