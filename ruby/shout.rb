module Shout
   def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!" + " :D"
  end
end

puts Shout.yell_angrily("This sucks")
puts Shout.yelling_happily("This rocks")