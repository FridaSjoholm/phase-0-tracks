class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance"
	end

	def print_info
		puts "This santa identifies as :#{@gender}, #{@ethnicity}, and is #{@age} years old"
		puts "This is the santas reindeers in order of preferrability #{@reindeer_ranking}"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |santa|
	santa.print_info
end