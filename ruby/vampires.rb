puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year = gets.chomp
now = Time.now.year
correct_year = now - year
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
order_bread = gets[0] == "y"
puts "Would you like to enroll in the company’s health insurance?"
insurance = gets[0] == "y"

if (age == correct_year) && ((order_bread == "y") || (insurance == "y"))
  result = "Probably not a vampire."
else
  result = "Results inconclusive."
end

if (age != correct_year) && ((order_bread != "y") || (insurance != "y"))
  result = "Probably a vampire."
else
  result = "Results inconclusive."
end

if (age != correct_year) && (order_bread != "y") && (insurance != "y")
  result = "Almost certainly a vampire."
else
  result = "Results inconclusive."
end

if name == "Drake Cula" || name == "Tu Fang"
  result = "Definitely a vampire."
else
  result = "Results inconclusive."
end 

















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


		  if (age == correct_year) && ((garlic == true) || (health_insurance == true))
			    result = "Probably not a vampire."
      else 
          result = "Results inconclusive."
      end
	 	  
      if (age != correct_year) && ((garlic == false) || (health_insurance == false))
			    result = "Probably a vampire."
		  else 
          result = "Results inconclusive."
      end
     
      if ((age != correct_year) && (garlic == false) && (health_insurance == false))
			    result = "Almost certainly a vampire."
	   	else 
          result = "Results inconclusive."
      end
     
      if applicant_name == "Drake Cula" || !"Tu Fang"
			    result = "Definitely a vampire."
      else
          result = "Results inconclusive."
		  end

# ^^ This is not coming out with the proper results.... not sure what I am doing wrong at this point. It is always saying "Definitely a vampire." 

      puts "Please name any allergies you have one at a time. Say 'done' when you are finished:"
      loop do
        answer = gets.chomp 
        if answer == "done"
          break
        elsif answer == "sunshine"
          result = "Probably a vampire."
          break
        end
      end

     puts result

  	employees-=1
  	end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


