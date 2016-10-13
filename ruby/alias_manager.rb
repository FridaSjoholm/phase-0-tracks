#ask user for name 

puts "Hi! Whats the name you would like to create a fake name for?"
original_name = gets.chomp

# split name by the space and switch places of first and last, also make all letter downcase to make next step easier.
first, last = original_name.split(' ')
reversed_name = last.downcase + " " + first.downcase
puts reversed_name
# create one array with vowels and one with consonant