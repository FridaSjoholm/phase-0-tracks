class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	#	puts "Initializing Santa instance"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
	end
end

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

200.times do |new_santa|
	new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	new_santa.age = rand(0..140)
	puts "This santa idintifies as #{new_santa.gender}"
	puts "It has the ethnicity #{new_santa.ethnicity}"
	puts "And is #{new_santa.age} years old"
	puts "----------------------------------------------"
end

#santas.each do |santa|
#	santa.print_info
#end

#santas[0].celebrate_birthday
#santas[0].gender = ("trans")
#puts santas[0].age
#puts santas[0].ethnicity
#santas[0].print_info
#
#santas[1].get_mad_at("Dasher")
#santas[1].print_info