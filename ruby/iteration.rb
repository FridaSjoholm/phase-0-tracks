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


ages = [18, 17, 23, 25, 29, 78, 16, 20]
puts "people of these ages want to come into the club: "
p ages
ages.delete_if{|age| age < 21}
puts "people of these ages are allowed into the club"
p ages

people = {Peter: 18, Nick: 17, Lisa: 23, Joe: 25,Jane: 29,Inga: 78,Chandler: 16, Rachel: 20}
puts "These people want to come into the club: "
p people
people.delete_if{|name, age| age < 21}
puts "These cool people are allowed into the club"
p people


numbers = [1, 56, 32, 78, 12, 90, 7, 12]
puts "These numbers wanna be cool"
p numbers
numbers.keep_if{|num| num > 10}
puts "These numbers are cool"
p numbers

time_of_day = {morning: 9, lunch: 12, afternoon: 15, evening: 18, night: 22,}
puts "these are normal times to eat:"
p time_of_day
time_of_day.keep_if{|name, time| time< 19}
puts "these are good times to eat:"
p time_of_day

