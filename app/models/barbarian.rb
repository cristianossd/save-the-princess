# app/models/barbarian.rb
class Barbarian < Character
	# Extra attribute of barbarian to the character
	def attack()
		super + 1
	end

	def defend()
		super + 2
	end
end