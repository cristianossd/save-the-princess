# app/models/turn.rb
class Battle::Round::Turn
	attr_accessor :attacker, :defender

	# Store the fighters
	def initialize(params = {})
		@attacker = params[:attacker]
		@defender = params[:defender]

		self
	end

	# Calculate damage
	def start
		puts "#{@attacker.name} was here!"
		damage = @attacker.attack - @defender.defend
		if damage > 0
			puts "#{@attacker.name} caused #{damage} damage to #{@defender.name}"
			@defender.current_hp -= damage
		else
			puts "#{@attacker.name} not caused damage to #{@defender.name}"
		end
	end
end