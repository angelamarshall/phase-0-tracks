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




class Cat 
	def initialize
		puts "Initializing new cat instance..."
	end

	def pur
		puts "Purrrrrrrrrr"
	end

	def cat_years(age)
		puts age * 9
	end
end

kiki = Cat.new
#kiki.pur
#kiki.cat_years(8)

felines = []
50.times do 
	felines << Cat.new
end

felines.each do |c| 
  c.pur 
  c.cat_years(8)
end


