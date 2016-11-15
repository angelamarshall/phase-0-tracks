age = nil

puts "What is this hamster's name?"
name = gets.chomp
puts "What is the volume level of this hamster?(1-10)"
volume = gets.chomp.to_i
puts "What is the fur color?"
color = gets.chomp
puts "Is this hampster a good candidate for adoption????(yes/no)"
adoption = gets[0] == "y"
puts "What is the estimated age of this hamster?"
age = gets.chomp.to_i


puts "#{name} is a #{color} hamster.  #{name} has a volume of #{volume}."
puts "Age: " + age.to_s
puts "Adoptable: " + adoption.to_s