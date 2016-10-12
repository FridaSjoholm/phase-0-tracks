def my_method 
	puts "Hello there"
	yield("Frida","Rob")
	puts "bye"
end

my_method {|a,b| puts "Nice to see you #{b} and #{a}"}

