age = nil

puts " What is the hampsters name?"
hamp_name = gets.chomp

puts "What is the volume level? (1-10)"
volume = gets.chomp.to_i

puts "What is the fur color?"
fur_color = gets.chomp

puts "Is the hampster a good candidate for adoption? (y/n)"
candidate = gets[0] == "y"

puts "What is the estimated age of the hampster?"
age = gets.chomp.to_i


puts "#{hamp_name} is a #{fur_color} hamster.  #{hamp_name} has a volume of #{volume}."
puts "Age: " + age.to_s
puts "Adoptable: " + candidate.to_s