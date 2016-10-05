#for encrypt:
#if we enter abc to method we want to return bcd, to do this wehave to:
#-take in string
#-check strings length
#- make a while loop where we loop through the string
# for each letter we use the .next method to display the next letter 
# in the alphabeth
#- make exception for spaces.

def encrypt(str)
	length=str.length
	i=0
	newstring= ""
	while i<length
		if str[i]==" "
			newstring = newstring+ str[i]
		else
			newstring += str[i].next 
		end
		i+=1
	end
	return newstring
end

puts encrypt("abcde") 