#Rock Paper Sciccors game. 

def main 
  puts "Welcome to Paper, Rock Scissors"
  human
end 

#Human selects their weapon 
def human
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
  robot(weapon)
end

#AI Selects there weapon 
def robot(weapon)
  if rand(1..3) == 1
    tool = "Rock"
  elsif rand(1..3) == 2
    tool= "Scissors"
  elsif rand(1..3) == 3
    tool = "Paper"
  end 
  puts "The computer selected #{tool} as their weapon!"
  battle(weapon,tool)
end 

#The code for the battle:
def battle(weapon, tool)
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
      human
  # end   
  end 
end 

main 





