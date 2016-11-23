puts "Client Information"
puts "Please fill out the following fields when prompted."

#Getting client info by prompting questions below...
puts "Name?"
name = gets.chomp
puts "Age?"
age = gets.chomp
puts "Email?"
email = gets.chomp
puts "Number_of_Children?"
number_of_children = gets.chomp
puts "What is the preferred decor theme?"
decor_theme = gets.chomp

# Created the has for the client info
client_info = {
	:name => name,
	:age => age,
	:email => email,
	:number_of_children => number_of_children,
	:decor_theme => decor_theme
}

# Printing the client info that was just put in
puts "Thank you! Here is your info:"
p client_info

# Asking if the client would want to make a change
puts "Would you like to make a change?"
client_answer = gets.chomp

# Created a method to ask if the client wants to make any changes 
# Wondering if there is a way to have a variation of acceptable answers below? Such as "yes" "ya" "yup" "y".... etc  
if client_answer == "yes"
  puts "What field would you like to make a change to? Please try to type it in the format you saw it in above." 
  change = gets.chomp

  puts "What would you like to change it to?"
  new_input = gets.chomp
# Changing the field to a symbol so the information can be properly put in 
  client_info[change.downcase.to_sym] = new_input

# Printing the updated client info if there is an update
  puts "Thank you! Here is your updated info:"
  p client_info
else
  puts "Ok - all your information has been recorded!"
end





