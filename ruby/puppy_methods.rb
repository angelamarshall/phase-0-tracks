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
end


max = Puppy.new
max.fetch("ball")
max.speak(2)
max.roll_over