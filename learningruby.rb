@animals = ["cat","dog","iguana",nil].compact
@animals.each{|ani| puts ani}
@person = { 
  :name => "kingdark",
  :email => "suphawutK@gmail.com",
  :colors => ["black", "green", "white"]
}
puts @person
module Detail
	def detail_set
		"It has Detail:"+@detail.join(',')
	end
end

class Animal
	
	def initialize
		@name = "DigDok"
		@age = 20
		@sex = "male"
	end
end

class Bird < Animal
	include Detail
	def initialize
		super
		@detail = {
			:wing => 2,
			:legs => 2
		}
	end
end

class Mammal < Animal
	include Detail
	def initialize
		super
		@detail = {
			:legs => 4,
			:babyfood => "Milk",
			:special_ability => nil
		}
	end
end

class Cat < Animal
	include Detail
	def initialize
		super
		@detail = {
			:sharpclaws => "very Sharp",
			:special_ability => "Climb a tree"
		}
	end
end

class Dog < Animal
	include Detail
	def initialize
		super
		@detail = {
			:best_friend => "Human",
			:special_ability => "Bark"
		}
	end
end

class Zoo
	An = Animal.new
	include Detail
	def initialize
		@An = Animal
		case zoo
			when animals 
				@An.each{|ani| puts ani}
			when cats
				@An[Cat].each{|cat| puts cat}
			when search
				@An
				@An.each{|se| puts se}
		end
	end
end
