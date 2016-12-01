class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
		toy
	end

	def speak(i)
		i.times {puts "Woof!"}
	end

	def roll_over
		puts "*rolls over*"
	end

	def dog_years(age)
		puts age * 7
	end 

	def sit 
		puts "*sits*"
	end

	def initialize
		puts "Initializing new puppy instance..."
	end
end


max = Puppy.new
max.fetch("ball")
max.speak(2)
max.roll_over
max.dog_years(3)
max.sit