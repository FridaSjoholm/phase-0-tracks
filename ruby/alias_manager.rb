#ask user for name 

puts "Hi! Whats the name you would like to create a fake name for?"
original_name = gets.chomp

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
puts new_name.split.map(&:capitalize).join(" ")