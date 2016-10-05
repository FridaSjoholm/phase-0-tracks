#for encrypt:
#if we enter abc to method we want to return bcd, to do this wehave to:
#-take in string
#- check strings length
#- make a while loop where we loop through the string
#- for each letter we use the .next method to display the next letter 
# in the alphabeth
#- make exception for spaces.

#for decrypt:
#We will use the same method as above to determine length and loop 
#through the string
#We will add a alphabeth string, and for each letter look for index in 
#alphabet string, and add the next letter in alphabet to returning string
# We will also need exceptions for first letter (a) and spaces

def encrypt(str)
	length=str.length
	i=0
	newstring= ""
	while i<length
		if str[i]==" "
			newstring += str[i]
		elsif str[i]== "z"
			newstring += "a"
		else
			newstring += str[i].next 
		end
		i+=1
	end
	return newstring
end

def decrypt(str)
	length =str.length
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	i=0
	newstr = ""
	while i<length
		if str[i]==" "
			newstr += str[i]
		elsif str[i]== "a"
			newstr += "z"
		else
			ind = alphabet.index(str[i])
			newstr += alphabet[ind-1]
		end
		i+=1
	end
	return newstr
end
