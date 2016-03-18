#Rock Paper Sciccors game. 

puts "Welcome to Paper, Rock Scissors"
puts "Please select what you want to use"
puts "*********************************"
puts "1. Rock"
puts "2. Paper"
puts "3. Scissors"
puts "What is your choice?"
choice = gets.chomp.to_i
if choice == 1
  puts "You selected Rock"
elsif choice == 2
  puts "you selected Paper"
elsif choice == 3
  puts "you selected Scissors"
end 
  

def rock
  if rand(3) == 1 
    puts "rock"
  elsif rand(3) == 2
    puts "Sciccors"
  elsif rand(3) == 3
    puts "paper"
  end  
end 
