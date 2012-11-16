@animals = ["cat","dog","iguana",nil].compact
@animals.each{|ani| puts ani}
@person = { 
  :name => "kingdark",
  :email => "suphawutK@gmail.com",
  :colors => ["black", "green", "white"]
}
puts @person
class Animal
	attr_accessor :detail
	def initialize
		@name = "DigDok"
		@age = 20
		@sex = "male"
	end
end
module Detail
	def detail_set
		@detail.join(',')
	end
		class Bird < Animal
			def initialize
				@detail = {
					:wing => 2,
					:legs => 2
				}
			end
		end

		class Mammal < Animal
			def initialize
				@detail = {
					:legs => 4,
					:babyfood => "Milk",
					:special_ability => nil
				}
			end
		end

		class Cat < Animal
			def initialize
				@detail = {
					:sharpclaws => "very Sharp",
					:special_ability => "Climb a tree"
				}
			end
		end

		class Dog < Animal
			def initialize
				@detail = {
					:best_friend => "Human",
					:special_ability => "Bark"
				}
			end
		end
end
