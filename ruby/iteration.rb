def my_method 
	puts "Hello there"
	yield("Frida","Rob")
	puts "bye"
end

my_method {|a,b| puts "Nice to see you #{b} and #{a}"}

pretty_colors = ["yellow", "pink", "green", "fuscia", "petrol"]
capitals_and_states = {:California => "Sacramento", :Illinois => "Springfield", :Michigan => "Lansing"}
new_pretty_colors = []

## Demonstarates each/array
puts "Orinal data:"
p pretty_colors
p new_pretty_colors

pretty_colors.each do|colors|
	new_pretty_colors << colors.capitalize
end

puts "Modified data:"
p pretty_colors
p new_pretty_colors

# Demonstrates each/hash
capitals_and_states.each do|state, capital|
  puts "#{capital} is the capital of #{state}"
end

#Demonstrates Array/maps
puts "Orinal data:"
p pretty_colors

pretty_colors.map! do |color|
	color.upcase
end

puts pretty_colors


