class Puppy

  def initialize()
 	puts "initializing new pupy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times do 
  		puts "Woof!"
  	end
  end

  def roll_over()
  	puts "*RollsOver*"
  end

  def dog_years(human_years)
  	puts human_years * 7
  end

  def dog_eat(food)
  	puts "#{food} is so tasty"
  end

 

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over 
fido.dog_years(10)
fido.dog_eat("steak")


class SoccerPlayer

	def initialize()
		puts "new player"
	end

	def shooting_goal(shots_attempted)
		puts "you tried to shoot at goal #{shots_attempted} times and you made #{shots_attempted/2}"
	end

	def assist(assist_count)
		puts "you made #{assist_count} assist"
	end
end

ronaldo = SoccerPlayer.new
ronaldo.shooting_goal(6)
ronaldo.assist(2)

players = []

50.times do 

players << newsoccerplayer = SoccerPlayer.new
end
players.each do |x| 
x.assist(3)
x.shooting_goal(4)
end 
