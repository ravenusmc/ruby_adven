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
	puts `clear`
	puts "As you open the door you see a giant shadow like being standing in front of you with Red glowning eyes"
	puts "What action will you take? (run/shoot)"
	choice = gets.chomp.downcase
	if choice == "run"
		puts "You turn to run but the being rips the door off of its henges"
		puts "It grabs your head and rips it clean off your body"
		puts "Sorry you did not survive!"
		puts "GAME OVER MAN" 
		`say "GAME OVER MAN"`
	elsif choice == "shoot" && item[1] != "pistol"
		puts "You have no gun!"
		puts "The being grabs your head and rips it clean off your body"
		puts "Sorry you did not survive!"
		puts "GAME OVER MAN" 
		`say "GAME OVER MAN"`
	elsif choice == "shoot" && item[1] == "pistol"
		puts "You pull out the gun and shoot the monster backwards!!!"
			puts "will you fire another round? (yes/no)"
			bullet = 10 
			bullet -= 1 
			answer = gets.chomp.downcase
			if answer == "yes"
				puts "You fire one more round into the monster"
				puts "OMG it just disappears!"
				puts "You wonder what the hell just happened!" 
				puts "Now that the monster is gone you can walk into the large room"
				puts "The room is massive but there does not seem to be much in it"
				puts "On the far side of are three doors you decide to walk towards them"
				puts "As you do, you start to wonder where you are."
				puts "As you think about it you have no memory of ever arriving here."
				puts "You finally reach the three doors. You look back and the walk was about the length of a football field"
				puts "Above the doors you see a phrase it says 'Now the Real Adventure begins!'"
				puts "Which door will you choose? (left, middle, right)"
				door = gets.chomp.downcase
				if door == "left"
					left(life, item, bullet)
				elsif door == "middle"
					middle(life,item,bullet)
				elsif door == "right"
					right(life,item,bullet)
				end 
			elsif answer == "no"
				puts "The monster leaps forward and grabs both of your arms!"
				puts "The monster rips both of your arms clean off of your body!"
				puts "GAME OVER MAN" 
				`say "GAME OVER MAN"`
			end 
	end 
end

def left(life, item, bullet)
	puts `clear`
	puts "You enter a long hallway and start to walk down it."
	puts "The hallway opens up to a what appears to be a large cave."
	puts "The cave does not seem to be normal though as there are gian mushrooms growing out of the ground"
	puts "The mushrooms appear to be at least 8 to 12 feet tall!"
	puts "You decide to start walking through the giant forest"
	puts "As you walk through the forest you eventually come to an individual sitting on a mushroom blowing into a flute"
	puts "getting closer to the individual you believe that she is a female. For she has shoulder length blue hair and small reddish eyes"
	puts "The most interesting thing about her though is her clothes. They are green but her shorts are very short and her top is most unusual"
	puts "For the top covers over her midsection. The lower part of her stomach is exposed and the top portion of her shirt barely covers all of her breast"
	puts "You approach her and she suddenly stops playing the flute and looks up at you"
	puts `clear`
	puts "'Hello' she says"
	puts "She jumps off of the giant mushroom and rans over to you. She gives you a big hug and you notice that her body feels much warmer than any other body you have touched"
 	puts "She asks you: Would you like to kiss me? (yes/no)"
 	kiss = gets.chomp.to_s.downcase
 	if kiss == "yes"
 		puts `clear`
 		puts "she leans forward and quickly kisses you on the lips."
 		love = 5
 		item.push(love)
 		puts "She then turns and runs away from you!"
 	elsif kiss == "no"
 		puts `clear`
 		puts "she hits you in the chest and then runs away"	
 	end 
 	puts "You continue to walk through the land of the giant mushrooms. The air feels thick with humidity"
 	puts "You come to a clearing that seems to have much fewer mushrooms"
 	puts "There is a block that seems to simply be floating in the air. It is as if gravity is not acting on it!"
 	puts "You move past the block and see the strange girl in the distance. Do you go running towards her? (yes/no)"
 	run = gets.chomp.to_s
 	if run == "yes"
 		puts `clear`
 		puts "You make your way to the girl"
 		puts "She puts her arms around you"
 		puts "You are no me and I am now you."
 		puts "Her body moves into yours and you are her-oh GOD!!!!!"
 		puts "I guess this is game over!"
 		puts "------------------------"
 		puts " <><>T<>H<>E<><>E<>N<>D<><><><>"
 	elsif run == "no"
 		puts `clear`
 		puts "you runaway from her when you trip and fall down. Suddenly you get eaten by a mushroom"
 		put "You are dead!"
 	end 
 		
end 

def middle(life, item, bullet)
	puts `clear`
	puts "You open the door and walk into a world of light only."
	puts "You believe that you are in heaven. You have left the game"
	puts "Maybe you won, maybe you did not!"
end 

def right(life, item, bullet)
	puts "you open the door and the world around you is white."
	puts "The door behind you closes forever!"
	puts "You wonder out in the land of the lost!"
end  

main 