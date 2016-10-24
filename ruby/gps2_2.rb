# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
  # hash



def create_list(str)
  list = {}
  qty_default = 1
  arr = str.split(" ")
  arr.each {|item| list[item] = qty_default}
  return list
end

list = create_list("carrot apple cereal pizza")
puts list

# Method to add an item to a list
# input: item name and optional quantity, list
# steps:
  # Insert new grocery to hash and set value equal to quantity, give option to use default quantity
# output: #the hash, which now has the extra item

def add_item(list, item, qty = 1)
  list[item] = qty
  return list
end

puts add_item(list,"bacon", 3)

# Method to remove an item from the list
# input: Name of item user wants removed, list with items(hash)
# steps: Searh for and delete key with value in the list
# output: list with iems
def remove_item(list, item)
    list.delete(item)
    return list
end

puts remove_item(list, "apple")  

# Method to update the quantity of an item
# input:Name of item user wants updated, new quantity, list with items(hash)
# steps: Search for the key with value name in hash list, and set new value of the key to wished quantity. 
# output: list with updated quantities

# Method to print a list and make it look pretty
# input: List with items
# steps:
  #start by printing to console: These are the items we want to buy: 
  #Iterates trough hash and for each key prints a sentence with quantities  like: "Apples = 5"
# output: nada