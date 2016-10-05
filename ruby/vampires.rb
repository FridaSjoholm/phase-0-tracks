puts "How many employees will you be processing today?"
employees = gets.chomp
count = 0
while (count < employees.to_i)
	puts "What is your name?"
	nam = gets.chomp

	puts "How old are you?"
	age = gets.chomp

	puts "What year where you born?"
	year_of_birth = gets.chomp 

	if 2016- year_of_birth.to_i == age.to_i
		mathage = true;
	else	
		mathage = false;
	end

	puts "Our company cafeteria serves garlic bread, do you want some? (Y/N)"
	bread_liking = gets.chomp
	case bread_liking
	when "Y"
		bread_liking = true;
	when "N"
		bread_liking = false;
	end

	puts "Would you like to enroll in the company's health insurance? (Y/N)"
	insurance = gets.chomp
	case insurance
	when "Y"
		insurance = true;
	when "N"
		insurance = false;
	end

	vampire = "Results inconclusive."
	vampire = "Probably not a vampire." if  mathage && bread_liking && insurance
	vampire = "Probably a vampire." if !mathage && (!bread_liking || !insurance)
	vampire = "Almost certainly a vampire." if !mathage && !bread_liking && !insurance
	vampire = "Definitely a vampire." if nam == "Drake Cula" ||nam == "Tu Fang"
	
	allergies = ""
	until allergies == "done" 
		puts "Add any allergy, type done when done."
		allergies = gets.chomp
		if allergies == "sunshine"
			vampire = "Definitely a vampire."
			break
		end
	end
	
	puts vampire
	count +=1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."