#Rock Paper Sciccors game. 


#Human selects their weapon 
puts "Welcome to Paper, Rock Scissors"
puts "Please select what you want to use"
puts "*********************************"
puts "1. Rock"
puts "2. Scissors"
puts "3. Paper"
puts "What is your choice?"
choice = gets.chomp.to_i
if choice == 1
  weapon = "Rock"
elsif choice == 2
  weapon = "Scissors"
elsif choice == 3
  weapon = "Paper"
end 

puts "you selected #{weapon} for your choice!"

#AI Selects there weapon 

  if rand(1..3) == 1
    tool = "Rock"
  elsif rand(1..3) == 2
    tool= "Scissors"
  elsif rand(1..3) == 3
    tool = "Paper"
  end 

puts "The computer selected #{tool} as their weapon!"

#The code for the battle:

# while tool != weapon do 
  if tool == "Rock" && weapon == "Scissors"
      puts "The computer wins"
    elsif tool == "Rock" && weapon == "Paper"
      puts "The human wins"
    elsif tool == "Paper" && weapon == "Scissors"
      puts "The human wins"
    elsif tool == "Paper" && weapon == "Rock"
      puts "The computer wins!"
    elsif tool == "Scissors" && weapon == "Paper"
      puts "The computer wins"
    elsif tool == "Scissors" && weapon == "Rock"
      puts "The Human wins"
    elsif tool == weapon 
      puts "Tie Game!"
  end 
# end 



 

      

# def rock
#   if rand(3) == 1 
#     tool = "rock"
#   elsif rand(3) == 2
#     tool = "Sciccors"
#   elsif rand(3) == 3
#     tool = "paper"
#   elsif rand(3) == 0
#     tool = "nothing"
#   end  
#   puts tool 
# end 

# rock()




