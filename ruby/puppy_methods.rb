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

humans = []
50.times do
	humans << Human.new
end

humans.each do |human|
	human.talk(2)
	human.run
end


