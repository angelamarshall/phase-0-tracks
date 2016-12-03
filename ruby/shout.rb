module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	words + "!!" + ":)"
  end
end

p Shout.yell_happily("YAYYY")
p Shout.yell_angrily("OUCH")