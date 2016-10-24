#word guessing game
#
#The game with all its moves and actions is going to be a class. For each game We will need one word to work with, 
#which will be passed in with initialization. Within it we we will have these actions:
#
#- comparison, which compares the letter to the string, and if the letter exists within the string we will update 
#an array with underlines to show at what location in the word that letter is.
#- a counter, which makes sure the player doesntguess too many times (and calculates how many time it's allowed to do so), and if the guess has allready been made
#the counter method will also check if the game is finished (either by winning or guessing all letters)
#

class Game
	attr_accessor :guess_count, :used_letters, :array, :over

	def initialize(word)	
		@word = word.downcase.chars
		@guess_count = (word.length)*2
		array = []
		(word.length).times{array << "_"} 
		@array = array
		@over = false
		@used_letters = []
	end

	def compare(letter)
		i = 0
		while i< @word.length
			if @word[i] == letter
				@array[i] = letter
			end
			i+=1
		end
		@array
	end


	def attempt(letter)
		if @used_letters.include?(letter)
			puts "That's the same letter again, that won't help"
		else
			@used_letters << letter
			@guess_count -= 1
			puts "you have #{@guess_count} attempts left"
		end
	@guess_count
	end

	def done()
		if @guess_count == 0
			puts "Thats not enough to continue :("
			@over = true
		elsif @array == @word 
			puts "Woohooo! you won!"
			@over = true	
		end
		@over
	end
end