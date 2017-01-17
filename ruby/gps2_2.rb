# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create a hash for the grocery list
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items, quantity = 1)
  grocery_list = Hash.new
  grocery_list_items = items.split(" ")
  grocery_list_items.each do |item| grocery_list[item] = quantity end
  return grocery_list
end

shopping_cart = create_list(" ")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: assign an item to the grocery list 
# output: grocery list item increase by one

def add_item(shopping_cart, new_item, quantity)
  shopping_cart[new_item] = quantity 
  return shopping_cart
end 

add_item(shopping_cart, "lemonade", 2)
add_item(shopping_cart, "tomatoes", 3)
add_item(shopping_cart, "onions", 1)
add_item(shopping_cart, "ice cream", 4)

# Method to remove an item from the list
# input: list, item name 
# steps: delete an item from the list it's stored in
# output: full list minus the item we deleted

def remove_item(shopping_cart, item)
  shopping_cart.delete(item)
  return shopping_cart
end

remove_item(shopping_cart, "lemonade")

# Method to update the quantity of an item
# input: list, item, quantity
# steps: assigning new quantity value to a single item
# output: print the whole list to ensure one item quantity has been changed

def update_quantity(shopping_cart, item, quantity)
  shopping_cart[item] = quantity 
  return shopping_cart
end 

update_quantity(shopping_cart, "ice cream", 1)


# Method to print a list and make it look pretty
# input: list, item, quantity
# steps: iterate through the items in the hash and print it in a nice looking list
# output: all info from the hash in a clean, readable format

def print_list(shopping_cart)
  shopping_cart.each do |i, q| puts "Item: #{i} Quantity: #{q}" end 
end 

print_list(shopping_cart)

=begin
What did you learn about pseudocode from working on this challenge?
It's so important to talk through what you need to do before jumping in and doing it. You avoid over thinking that way!

What are the tradeoffs of using arrays and hashes for this challenge?
A hash is the way to go for the overall list! You can better organize something that has two important points (item and its quantity).

What does a method return?
The last declared variable.

How can you pass information between methods?
By assigning info in a previous method to a variable and using that variable. 

What concepts were solidified in this challenge, and what concepts are still confusing?
This pairing session was very smooth. I do not feel confused on this material.
=end

