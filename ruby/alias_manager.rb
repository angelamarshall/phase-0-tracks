# writing a method that will create a fake name

# Ask for first and last name
puts "What is your first and last name?"
name = gets.chomp

# Turn first and last name into variables of an array
first_last = name.split(' ')

#p first_last

# Swap the first and last name
last_first = first_last.reverse

#p last_first






















=begin

# This is old work before my repeat!


# a method to flip and jumble up the first and last name

def alias_maker(full_name)
  # the first 3 commands will make all the letters lowercase and flip the name to read "last first"
	new_name = full_name.downcase
	new_name = new_name.split
	new_name = new_name.reverse!.join(" ")
# this will take the vowels of the new string and replace them with "eioua" which will make them read as the next vowel 
	new_name.tr!("aeiou", "eioua")
# this will take the non-vowels in the alphabet and make them read as the next non-vowel letters in the alphabet
	new_name.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
# capitalizing the first and last name and making them into a string again 
	new_name = new_name.split 
	new_name.map! { |name| name.capitalize}
	new_name = new_name.join(" ")
	return new_name
end

#alias_maker("Angela Marshall")



# user interface that allows user to enter a name and get an alias back

# created an array to store the names
alias_stored = []
puts "Type in a real name to recieve an alias immediately after. When you are finished type 'quit':"
# a loop to turn the real name into the fake name and store it 
  loop do
    real_name = gets.chomp 
    puts alias_maker(real_name)
    fake_name = alias_maker(real_name)
    break if real_name.downcase == "quit"
    alias_stored << {real_name: real_name, fake_name:  fake_name}
  end
#p alias_stored

alias_stored.each {|n| puts "#{n[:real_name]} is now going by #{n[:fake_name]}"}
=end