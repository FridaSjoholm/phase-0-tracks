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

	vampire = "Results inconclusive." #only applied if none of the below is applicable.
	vampire = "Probably not a vampire." if  mathage && bread_liking && insurance
	vampire = "Probably a vampire" if !mathage && (!bread_liking || !insurance)
	vampire = "Almost certainly a vampire" if !mathage && !bread_liking && !insurance
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

#vampire = "Results inconclusive." 		--Case method doesn't work due to excess amount of varibles
#case vampire
#when  mathage && bread_liking && insurance
#	vampire = "Probably not a vampire."
#when !mathage && (!bread_liking || !insurance)
#	vampire = "Probably a vampire"
#when !mathage && !bread_liking && !insurance
#	vampire = "Almost certainly a vampire"
#when name == "Drake Cula" || "Tu Fang"
#	 vampire = "Definitely a vampire."
#end
#puts vampire

#if  name == "Drake Cula" || "Tu Fang" 	--- If-else doesnt use last condition applicable, but first 
#	 puts "Definitely a vampire."		---which is not inline with assignment. 
#elsif (2016 - year_of_birth == age) && bread_liking == "Y" && insurance == "Y"
#	puts "Probably not a vampire."
#elsif (2016 - year_of_birth != age) && (bread_liking == "N" || insurance == "N")
#	puts "Probably a vampire"
#elsif (2016 - year_of_birth != age) && bread_liking == "N" && insurance == "N"
#	puts "Almost certainly a vampire"
#else 
#	puts "Results inconclusive"
#end