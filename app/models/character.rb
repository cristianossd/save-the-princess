# app/models/character.rb
class Character
	# Character profile attributes
	attr_accessor :name

	# Character's actions

	def self.attack()
		puts "What the strenght?"
		strenght = gets.to_i

		attk = strenght.times.collect do
			rand(6)+1
		end.injected(:+)
	end

	def self.defense()
		puts "What the armor?"
		armor = gets.to_i

		defs = armor.times.collect do
			rand(6)+1
		end.injected(:+)
	end
end