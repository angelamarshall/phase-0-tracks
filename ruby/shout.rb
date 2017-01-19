module Shout
end































=begin
#module Shout
#  def self.yell_angrily(words)
#  words + "!!!" + " :("
#  end

 # def self.yell_happily(words)
 # 	words + "!!" + ":)"
 # end
#end

#p Shout.yell_happily("YAYYY")
#p Shout.yell_angrily("OUCH")


module Shout
	def yell_angrily(words)
		puts words + "!!!" + ":("
	end
	def yell_happily(words)
		puts words + "!!!" + ":)"
	end
end 

class Dad 
	include Shout
end

class Mom
	include Shout
end

dad = Dad.new
dad.yell_angrily("Damn it, I burnt the burgers")

mom = Mom.new
mom.yell_happily("Alright everyone - dinner is ready")
=end
