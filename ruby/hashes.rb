client = Hash.new
puts "Please give us some information about yourself:"

puts "Name:"
client[:name] = gets.chomp

puts "Age:"
client[:age] = gets.chomp.to_i

puts "Number of kids:"
client[:number_of_kids] = gets.chomp.to_i

puts "Favorite color:"
client[:color] = gets.chomp

puts "Budget(in USD):"
client[:budget] = gets.chomp.to_i

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

puts "Thank you for your collaboration, this is the information we got from you:"
puts client
puts "Is there anything you'd like for us to update? if so, print the key, then enter and your new answer. If you are satisfied, type none"
update = gets.chomp.to_sym
if update == :none
	puts "Thanks again!"
else
	puts "This value is now #{client[update]}, What do you want it to be"
	client[update] = gets.chomp
	puts client
end