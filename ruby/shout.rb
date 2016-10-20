#module Shout
#   def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end
#  def self.yelling_happily(words)
#    words + "!!!" + " :D"
#  end
#end

#puts Shout.yell_angrily("This sucks")
#puts Shout.yelling_happily("This rocks")
#--------------------------------------------

module Shout
   def yell_angrily(words)
    words + "!!!" + " :("
  end
  def yelling_happily(words)
    words + "!!!" + " :D"
  end
end

class Babies 
	include Shout

end

class Old_people
	include Shout
end

Josua = Babies.new
	puts Josua.yell_angrily("BWAAAAAHHHHHHH")
	puts Josua.yelling_happily("WOooOOUuuuaaA")
Burt = Old_people.new
	puts Burt.yell_angrily("GET OF MY LAWN")
	puts Burt.yelling_happily("Bingo")