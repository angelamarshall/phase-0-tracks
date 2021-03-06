class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def celebrate_birthday
		@age = @age + 1
		puts @age
	end

	def get_mad_at(reindeer)
		reindeer_i = @reindeer_ranking.index(reindeer)
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(reindeer_i))
		p @reindeer_ranking
	end

	def random_age
    @age = rand(0...140)
  end
end

santa_clause = Santa.new("male", "white")
santa_clause.speak
santa_clause.eat_milk_and_cookies("chocolate chip cookie")
p santa_clause.age
santa_clause.celebrate_birthday
santa_clause.get_mad_at("Dasher")


santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

40.times do 
	santas = Santa.new(genders.sample, ethnicities.sample)
	santas.random_age
	p santas
end





































=begin
class Santa
	attr_reader :gender, :age, :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		@age + 1
	end

	def get_mad_at(reindeer_name)
		reindeer_index = @reindeer_ranking.index("Dasher")
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(reindeer_index))
	end
end

santa = Santa.new("Female", "black")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
p santa.ethnicity
p santa.gender
p santa.age
p santa.celebrate_birthday
p santa.get_mad_at("Dasher")
santa.gender = "Male"
puts "#{santa.gender}"
p santa.gender

santas = []
gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "asexual", "bisexual"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Chinese", "Mexican"]

50.times do 
  santas = Santa.new(gender.sample, ethnicity.sample)
  santas.age = rand(0..140)
  p santas
end

=end
