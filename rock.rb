#Rock Paper Sciccors game. 

puts "Welcome to Paper, Rock Sciccors"

def rock
  if rand(3) == 1 
    puts "rock"
  elsif rand(3) == 2
    puts "Sciccors"
  elsif rand(3) == 3
    puts "paper"
  end  
end 
