#Start by creating new empty hash
client = Hash.new
puts "Please give us some information about yourself:"

#Add questions where answers will go into new hashes
#Name
puts "Name:"
client[:name] = gets.chomp

#Age
puts "Age:"
client[:age] = gets.chomp.to_i

#Kids
puts "Number of kids:"
client[:number_of_kids] = gets.chomp.to_i

#Color
puts "Favorite color:"
client[:color] = gets.chomp

#Budget
puts "Budget(in USD):"
client[:budget] = gets.chomp.to_i

#Style
puts "Describe your style in max 3 words"
client[:style] = gets.chomp

#Some Yes and no questions to determine style
#Store answer in variable and input true or false depending 
#on if user answered yes or no
puts "Do you like these styles?"

puts "Industrial (Y/N)"
y_or_n = gets.chomp
client[:style_i] = true if y_or_n == "Y"
client[:style_i] = false if y_or_n == "N"

puts "Romantic (Y/N)"
y_or_n = gets.chomp
client[:style_r] = true if y_or_n == "Y"
client[:style_r] = false if y_or_n == "N"

puts "Boho chic (Y/N)"
y_or_n = gets.chomp
client[:style_b] = true if y_or_n == "Y"
client[:style_b] = false if y_or_n == "N"

puts "Golden Glam (Y/N)"
y_or_n = gets.chomp
client[:style_g] = true if y_or_n == "Y"
client[:style_g] = false if y_or_n == "N"

#Thank user and put information
puts "Thank you for your collaboration, this is the information we got from you:"
puts client
#ask user if they want any update
puts "Is there anything you'd like for us to update? if so, type the name of the key. If you are satisfied, type none"
#Store answer in variable, converted to symbol
update = gets.chomp.to_sym
#check if input was none, if so Thank and don't do anything else
if update == :none
	puts "Thanks again!"
#if not none, give user present value (by looking at the key they want us to change) and ask for new value.
else
	puts "This value is now #{client[update]}, What do you want it to be"
#update hash and print new hash
	client[update] = gets.chomp
	puts "thanks again! The new info is:"
	puts client
end