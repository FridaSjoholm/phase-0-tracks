recipes = {
	"Butternut squash soup" => [
		"butternut squash", 
		"water", 
		"garlic", 
		"carrot", 
		"lentils",
		"salt",
		"veg broth"
	] ,

	"Caprese salad" => [
		"tomatoes",
		"mozarella",
		"basil",
		"oil",
		"salt"
	] ,

	"Swedish pancakes" => [
		"flour",
		"egg",
		"milk",
		"butter",
		"salt"
	] ,

	"Apple pie" => [
		"apple",
		"cinnamon",
		"sugar",
		"butter",
		"flour",
	]
}

puts "The ingredients in a apple pie is:"
puts recipes["Apple pie"][0..-1]

puts "Here! have some salt:"
puts recipes["Butternut squash soup"][5]
puts recipes["Caprese salad"][4]
puts recipes["Swedish pancakes"][4]

puts "we have 4 recipes, lets see if any of them contains your favorite ingredient! Type it below:"
ingredient = gets.chomp.downcase

puts "these recipies have #{ingredient} in them:"
puts "Butternut squash soup: #{recipes["Butternut squash soup"].include?(ingredient)}"
puts "Caprese salad: #{recipes["Caprese salad"].include?(ingredient)}"
puts "Swedish pancakes: #{recipes["Swedish pancakes"].include?(ingredient)}"
puts "Apple pie: #{recipes["Apple pie"].include?(ingredient)}"