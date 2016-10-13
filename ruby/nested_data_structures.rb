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

puts "these recipies have flour in them:"
puts "Butternut squash soup: #{recipes["Butternut squash soup"].include?("flour")}"
puts "Caprese salad: #{recipes["Caprese salad"].include?("flour")}"
puts "Swedish pancakes: #{recipes["Swedish pancakes"].include?("flour")}"
puts "Apple pie: #{recipes["Apple pie"].include?("flour")}"