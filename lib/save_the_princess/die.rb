# lib/save_the_princess/die.rb
module Die
	@@sides = 6

	# Roll the die
	# You can change the amount of sides. Default is 6.
	def self.roll(sides = @@sides)
		rand(6)+1
	end
end