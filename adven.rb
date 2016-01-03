def main 
	puts "Welcome to Mikes quest"
	puts "----------------------"
	puts ">---< >----<"

	main_menu  
end 

def main_menu
	puts `clear`
	puts "What is your choice?"
	puts "1. To Play Mikes Quest!"
	puts "2. To Exit Mikes Quest!"
	choice = gets.chomp.to_i

	life = 10 

	if choice == 1
		start(life)
	elsif choice == 2
		puts "I see...your afraid!"
	end 
end 

def start(life) 
	puts `clear`
	puts "Your life level is #{life}" 
	puts "You suddenly find yourself awake on a bed!"
	puts "What do you do?"
	puts "1. Stay on the bed"
	puts "2. Leave bed and explore the room"
	choice = gets.chomp.to_i 
	if choice == 1
		stay(life)
	elsif choice == 2
		explore(life)
	end 
end 

def stay(life)
	puts `clear`
	puts "You stare at the ceiling when suddenly a knife drops from it!"
	life -= 10 
	puts "It cuts through your stomach and your die!"
	puts "Your life is #{life}"
end 

def explore(life)
	puts `clear`
	puts "you get up off of the bed and start to look around the room"
	puts "It is an empy room with a shelf across from you."
	puts "You walk "
end 

main 