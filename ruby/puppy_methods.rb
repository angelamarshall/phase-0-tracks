class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
  	puts "Woof! " * i 
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(i)
  	puts i * 7
  end

  def high_five
  	puts "*high fives*"
  end
end

Fred = Puppy.new
Fred.fetch("ball")
Fred.speak(2)
Fred.roll_over
Fred.dog_years(3)
Fred.high_five


class Human
	def initialize
		puts "Initializing new human instance..."
	end

	def talk(i)
		puts "blah " * i
	end

	def run
		puts "*running*"
	end
end

Andy = Human.new
Andy.talk(5)
Andy.run

50.times do
	Human.new
end


























=begin

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

=end
