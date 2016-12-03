class Santa
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

	def age
    @age
	end

	def reindeer_ranking
		@reindeer_ranking
	end

	def ethnicity
	  @ethnicity
	end

	def celebrate_birthday
		age + 1
	end

#	def get_mad_at(reindeer_name)
#p		reindeer_index = reindeer_ranking.index(reindeer_name)
#		reindeer_ranking.last(reindeer_index)
#	end

	def gender= (new_gender)
		@gender = new_gender
	end

end

santa = Santa.new("Female", "black")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
p santa.ethnicity
p santa.age
p santa.celebrate_birthday
#p get_mad_at("Dasher")

p reindeer_ranking.class
p reindeer_ranking.index("Vixen")

#santas = []
#gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#gender.length.times do |i|
#  santas << Santa.new(gender[i], ethnicity[i])
#end


