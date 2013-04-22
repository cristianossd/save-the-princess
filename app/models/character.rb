# app/models/character.rb
class Character
	# Character profile attributes
	attr_accessor :name
	attr_accessor :strength, :skill, :armor, :resistance, :fire_power
	attr_accessor :health_points

	# Character constructor
	def initialize(params = {})
		@name 			= params[:name] || ""
		@strength 		= params[:strength] || 0
		@skill 			= params[:skill] || 0
		@armor 			= params[:armor] || 0
		@resistance 	= params[:resistance] || 0
		@fire_power 	= params[:fire_power] || 0

		calculate_health_points
	end

	# Calculate attack for strenght
	def attack()
		strength.times.collect do
			Die.roll
		end.inject(:+)
	end

	# Calculate defend for armor
	def defend()
		armor.times.collect do
			Die.roll
		end.inject(:+)
	end
	
	# Calculate health points for resistance
	def calculate_health_points()
		if (resistance == 0)
			@health_points = 1
		else
			@health_points = resistance.times.collect do
				Die.roll
			end.inject(:+)
		end
	end
end