#I have to make a program that outputs the following:
#
##
###
####
#####

# i = 1 
# while i < 6
#   puts "#" * i
#   i += 1
# end 

#Write a program that outputs the following:
#####
#####
#####
#####
#####
#####

# i = 1 
# while i < 6
#   puts "#####"
#   i += 1
# end 

#Update on problem, Now I have to print out the following:
#
##
###
####
#####
#####
####
###
##
#

# i = 1 
# while i < 6 
#   puts "#" * i
#   i += 1
#   while i > 0
#     puts "#" * i
#     i -= 1
#   end 
# end


#Write a Ruby method which programmatically returns the following string:
#"one two two three three three four four four four five five five five five"
  #Extra:
  #It should use a Ruby counting method, and a key value hash.


# i = 1 
# for i in 1..5
#   p "#{i}" * i
# end

#The below "works" but I think it is to long! 
array = ["a", "to", "boy", "four", "jazzy"]
numbers = []
array.each do |num|
    values = num.size
    if values == 1 
        numbers.push("one ")
    elsif values == 2
        numbers.push("two " * 2)
    elsif values == 3
        numbers.push("Three " * 3)
    elsif values == 4
        numbers.push("four " * 4)
    elsif values == 5
        numbers.push("five " * 5)
    end 
end

p numbers















