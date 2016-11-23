puts "Client Information"
puts "Please fill out the following fields when prompted."

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

client_info = {
	:name => name,
	:age => age,
	:email => email,
	:number_of_children => number_of_children,
	:decor_theme => decor_theme
}

puts "Thank you! Here is your info:"
p client_info

puts "Would you like to make a change?"
client_answer = gets.chomp

# Wondering if there is a way to have a variation of acceptable answers below? Such as "yes" "ya" "yup" "y".... etc  
if client_answer == "yes"
  puts "What field would you like to make a change to? Please try to type it in the format you saw it in above." 
  change = gets.chomp

  puts "What would you like to change it to?"
  new_input = gets.chomp

  client_info[change.downcase.to_sym] = new_input

  puts "Thank you! Here is your updated info:"
  p client_info
else
  puts "Ok - all your information has been recorded!"
end





