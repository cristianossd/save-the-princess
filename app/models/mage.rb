# app/models/mage.rb
class Mage < Character
	# Extra attribute of mage to the character
	def protego()
		defend() + 2
	end
end