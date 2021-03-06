#To give user possibility to do use the program over and over we will create a loop that will continue rolling untill
#doesnt want more help, then it will cnhange the conditional value for the loop to false and loop will break.


aliases = Hash.new # initializes hash to store aliases
want_help = true
while want_help 
#ask user for name 
puts "Whats the name you would like to create a fake name for?"
	original_name = gets.chomp
	if original_name.downcase == "quit"
		want_help = false
		break
	end
	# split name by the space and switch places of first and last, also make all letter downcase to make next step easier.
	first, last = original_name.split(' ')
	reversed_name = last.downcase + " " + first.downcase
	# create one string (not array, because string still has index and is less messy to write out) with vowels and one with consonant
	vowels = "aeiou"
	consonant = "bcdfghjklmnpqrstvwxyz"
	new_name = ""

	#go through every letter in the reversed name, and create a string with a new name.
	#if space, keep spce, then see if letter is vowel, if so add next vowel in vowel string 
	#to new_name string, if not check if consonant, if so, put next consonant to new name

	#We must also add check if the letter is last vowel or consonant, and if so put the first 
	#vowel/consonant in newname

	reversed_name.chars.map{|letter|
		if letter == " "
			new_name += " "
		elsif vowels.index(letter) != nil
			if letter == "u"
				new_name += vowels[0]
			else 
				new_name += vowels[vowels.index(letter)+1]
			end
		elsif consonant.index(letter) != nil
			if letter == "z"
				new_name += consonant[0] 
			else
				new_name += consonant[consonant.index(letter)+1]
			end
		end
	}
	#return new name to user, capitalized(we have to split name up, capitalize each item in array, then join with space between)
	puts "Your supercool alias is:"	
	cool_alias = new_name.split.map(&:capitalize).join(" ")
	puts cool_alias
	#to build a structure of all the data we simply provide the data to the hash, with the new key and value.
	aliases[original_name] = cool_alias

	puts "If you want to creat another alias, type it below, if not, type quit"
end

puts "Thank you for your collaboration, here are the aliases we made you:"
aliases.each {|original, new_alias| puts "#{original} has the alias #{new_alias}" }