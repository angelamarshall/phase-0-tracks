#puts "How many employees will be processed?"
#employees = gets.chomp.to_i

#until employees == 0 
#	puts vampires.rb
#end

puts "How many employees will be processed?"
employees = gets.chomp.to_i

 	until employees<=0
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

      loop do
        puts "Please name any allergies you have one at a time. Say 'done' when you are finished:"
        answer = gets.chomp 
        if answer == "done"
          break
        elsif answer == "sunshine"
          puts "Probably a vampire."
          break
        end
      end

		  if (age == correct_year) && ((garlic == true) || (health_insurance == true))
			   print "Probably not a vampire."
	 	  elsif (age != correct_year) && ((garlic == false) || (health_insurance == false))
			   print "Probably a vampire."
		  elsif ((age != correct_year) && (garlic == false) && (health_insurance == false))
			   print "Almost certainly a vampire."
	   	elsif applicant_name == "Drake Cula" || "Tu Fang"
			   print "Definitely a vampire."
		  else
			   print "Results inconclusive."
		  end
# ^^ This is not coming out with the proper results.... not sure what I am doing wrong at this point. The logic behind it seems legitimate to me. 
# Also... it still prints results before the 'loop do' results opposed to after

  	employees-=1
  	end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


