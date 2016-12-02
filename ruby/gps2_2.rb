# Method to create a list  
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create a new hash
  # Seperate each item in the input string by spaces
  # set default quantity as length of the hash
  # print the list to the console [can you use one of your other methods here?]
# output: a hash containing the list of items.
# Method to add an item to a list
#input: name of the list, item name and optional quantity
#steps: set item name as key and optional quantity as value
# output: hash containing the added item
# Method to remove an item from the list
# input: name of the list and item name
# steps: delete the item from the hash using the given input
# output: hash with the item removed
# Method to update the quantity of an item
# input: list, item name, and new quantity
# steps: replace the old quantity with the new quantity given in the input
# output: hash with updated vlues for given item
# Method to print a list and make it look pretty
# input: name of list
# steps: loop through each item in the list and print each item
# output: each items name and quantity for each item on the list



def create_list(item_string)   
	@grocery_list = Hash.new
	list = item_string.split(" ")
	list.each do |x| @grocery_list[x]=1 end
	@grocery_list
end

def add_to_list(list, item, quantity)
   list[item] = quantity
   list
end

def remove_from_list(list, item)
   list.delete(item)
   list
end

def update_item_quantity(list, item, quantity)
   list[item] = quantity
   list
end

def print_list(list)
    puts "Grocery shopping list:"
    @grocery_list.each do |item,quantity| puts "* Item: #{item}  Quantity: #{quantity} " end
end
 
create_list("Beef Skittles")
add_to_list(@grocery_list, "Lemonade", 2)
add_to_list(@grocery_list, "Tomatoes", 3)
add_to_list(@grocery_list, "Onions", 2)
add_to_list(@grocery_list, "Ice Cream", 4)
remove_from_list(@grocery_list, "Lemonade")
update_item_quantity(@grocery_list, "Ice Cream",1)
print_list(@grocery_list)    



