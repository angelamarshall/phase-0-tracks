#puts "How many employees will be processed?"
#employees = gets.chomp.to_i

#until employees == 0 
#	puts vampires.rb
#end



puts "What is your name?"
applicant_name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

now = Time.now.year

correct_year = now - year

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets[0] == "y"

puts "Would you like to enroll in the company’s health insurance?"
health_insurance = gets[0] == "y"

if (age == correct_year) && ((garlic == true) || (health_insurance == true))
	puts "Probably not a vampire."
elsif (age != correct_year) && ((garlic == false) || (health_insurance == false))
	puts "Probably a vampire."
elsif ((age != correct_year) && (garlic == false) && (health_insurance == false))
	puts "Almost certainly a vampire."
elsif applicant_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
else
	puts "Results inconclusive."
end


