# writing a method that will create a fake/alias name
def alias_name(first_last)
	# ensure all letters of the name are lower case
	og_name = first_last.downcase
	# split the name and reverse it, joinging it back to a string afterward
	new_name = og_name.split(' ').reverse.join(' ')
	# shift all vowels over to the next vowel by replacing them
	new_name.tr!('aeiou', 'eioua')
	# shift all consonants over to the next consonant by replacing them
	new_name.tr!('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
	# split the new name into two items
	alias_n = new_name.split(' ')
	# loop through each item in the array and capitalize the first letter of each 
	alias_n.each do |name|
		name.capitalize!
	end
	alias_n.join(' ')
end

# p alias_name('Felicia Torres')


# user interface that allows user to enter their name and get a fake one back
real_vs_fake = Array.new

loop do
	puts 'What is the real full name? (type "quit" if you are done)'
	full_name = gets.chomp
		if full_name == 'quit'
			break
		else
			puts 'Here is the alias:'
			puts alias_name(full_name)
		end
	# Adding a storing method:
	real_vs_fake << {real_names: full_name, fake_names: alias_name(full_name)}
end

# p real_vs_fake

# sorting through each item in the array/hash to compare the real names and fake names
real_vs_fake.each do |n|
	puts "#{n[:real_names]} will now go by #{n[:fake_names]}."
end














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