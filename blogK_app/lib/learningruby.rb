@animals = ["cat","dog","iguana",nil].compact
@animals.each{|ani| puts ani}
@person = { 
  :name => "kingdark",
  :email => "suphawutK@gmail.com",
  :colors => ["black", "green", "white"]
}
puts @person
module Detail
	attr_accessor :special_ability
	attr_accessor :claw_sharpness
	attr_accessor :best_friend
end

class Animal
	def initialize(options = {})
		@name = options[:name]
		@age = option[:age]
		@sex = option[:sex]
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
	def initialize(options = {})
		super
			@legs = 4
			@babyfood = [:babyfood]
	end
end

class Cat < Mammal
	include Detail
	def initialize(options = {})
		super
		@claw_sharpness = options[:claw_sharpness]
		@special_ability = options[:special_ability]

	end
end

class Dog < Mammal
	include Detail
	def initialize(options = {})
		super
		@best_friend = option[:best_friend]
		@special_ability = options[:special_ability]
	end
end

class Zoo
	attr_reader :animals
	def initialize(animals = [])
		@animals = animals
	end

	def cats
 		@animals.select { |a| a.kind_of?(Cat) }
	end

	def seach(type,value)
		@animals.select { |a| a.send("#{type}") == value }
	end
end