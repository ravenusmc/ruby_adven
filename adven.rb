def main 
	puts "Welcome to Mikes quest"
	`say "Welcome to Mikes quest"`
	puts "----------------------"
	puts ">---< >----<"

	main_menu  
end 

def main_menu
	puts `clear`
	puts "What is your choice?"
	`say "What is your choice?"`
	puts "1. To Play Mikes Quest!"
	puts "2. To Exit Mikes Quest!"
	choice = gets.chomp.to_i

	life = 10 

	if choice == 1
		start(life)
	elsif choice == 2
		puts "I see...you are afraid!"
		`say "I see...you are afraid!"`
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
	`say "The knife cuts through your stomach and you are dead!"`
	puts "Your life is #{life}"
end 

#This method creates the item array which will be used to hold items as ones journey progresses
def explore(life)
	puts `clear`
	puts "You get up off of the bed and start to look around the room"
	puts "It is an empy room with a shelf across from you."
	puts "You walk to the shelf which is very dusty"
	puts "on the shelf you notice that there is a key"
	puts "Do you want to take the key? (yes/no)"
	item = []
	choice = gets.chomp.downcase
	if choice == 'yes'
		item.push('key')
		puts 'You have taking the key and it is added to your inventory'
		puts "#{item[0]} is in your inventory"
	elsif choice == 'no'
		puts "You decide not to take the key"
	end 
	puts "You turn around to see a small door next to you"
	puts "You reach out and try turning the door handle but it is locked"
	puts "Will you try opening the door? (yes/no)"
	choice = gets.chomp.downcase
	if choice == 'yes' && item[0] == 'key'
		puts "You unlocked the door"
		hallway(life, item)
	elsif choice == 'yes' && item[0] != 'key'
		puts "You need to have the key!"
	elsif choice == 'no'
		puts "Well you get bored and decide to head back to the bed." 
		puts "a knife falls from the ceiling and you die"
		life -= 10 
		puts "Your life is #{life}"		
	end 		
end 

def hallway(life, item)
	puts `clear`
	puts "Upon exiting the room you find yourself in a small hallway."
	puts "There is a door to your left, a door to your right and a door a head of you"
	puts "which direction will you go? (left, right, straight)"
	choice = gets.chomp.downcase
	if choice == 'left'
		puts "You open the door and as soon as you step into the room a gun goes off"
		puts "The bullet hits you in your head and you die"
		puts "You should have known that left was bad, for it comes from Sinister in Latin"
		life -= 10
		puts "Your life is #{life} since you are dead!"
	elsif choice == 'right'
		hallway2(life, item)
	elsif choice == 'straight'
		large_room(life,item)
	end 
end 

def hallway2(life, item)
	puts `clear` 
	puts "You enter a long hallway that has a red rug."
	puts "you decide to start walking down it."
	puts "on the right hand side you see that there are windows and that it is night out"
	puts "rain is beating down on the window, lightening flashes in the distance"
	puts "and yet you continue on walking down the hallways until you come to a door"
	puts "will you open the door? (yes/no)"
	choice = gets.chomp.downcase 
	if choice == "yes"
		puts "You turn the handle, the door opens, you enter another room"
		prison(life,item)
	elsif choice == "no"
		puts "You turn around and decide to head back to the original small hallway"
		hallway(life,item) 
	end 
end 

def prison(life, item)
	puts `clear`
	puts "You enter a room that only has a single swinging lamp from the ceiling"
	puts "On the far side of the room you see that there are two skeletons chained to the wall"
	puts "You approach them. On the one on the right you can see that it has a note on it"
	puts "Will you pick up the note? (yes/no)"
	choice = gets.chomp.downcase
	if choice == "yes"
		puts "you pick up the note and start reading it"
		`say "Dear Tom I have been stuck in this house for years and I have never been able to find a way out"`
		puts "Dear Tom I have been stuck in this house for years and I have never been able to find a way out"
		`say "I was finally captured by a force that I could not see. That being gave me a pen and paper to write to you"`
		puts "I was finally captured by a force that I could not see. That being gave me a pen and paper to write to you"
		`say "oh Tom I am not sure what to write you. I am stuck here forever...I lo...love you!"`
		puts "oh Tom I am not sure what to write you. I am stuck here forever...I lo...love you!"
		`say "Your loving wife Clare"`
		puts "Your loving wife Clare"
	elsif choice == "no"
		puts "You ignore the letter!"
	end 
	puts "You look over at the 2nd skeleton and notice that there is a pistol."
	puts "Will you take the pistol? (yes/no)"
	choice = gets.chomp.downcase
	if choice == "yes"
		puts "you picked up the pistol and added it to your inventory"
		item.push('pistol')
	elsif choice == "no"
		puts "You leave the pistol"
		puts "You have a feeling that was not a smart choice"
	end 
	 puts "looking around the room you see that there is nothing left in this room"
	 puts "you take one final look at the skeletons and hope that you do not end up like them!"
	 puts "you move back through the hallway to the smaller hallway."
	 hallway(life,item)
end 

def large_room(life, item)
	puts "As you open the door "
end

main 