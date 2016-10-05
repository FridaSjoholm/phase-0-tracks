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
