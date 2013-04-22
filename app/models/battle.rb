# app/models/battle.rb
class Battle
	attr_accessor :challenger, :opponent

	# Store the fighters
	def initialize(params = {})
		@challenger = params[:challenger]
		@opponent = params[:opponent]
	end

	# Initiative
	def start
		recover_health_points_for challenger
		recover_health_points_for opponent

		first, last = initiative

		while (@challenger.alive?) && (@opponent.alive?)
			Round.new(challenger: first, opponent: last).start
		end
		
		@challenger.knocked_out? ? @opponent : @challenger
	end

	def recover_health_points_for(character)
		character.current_hp = character.health_points		
	end

	def initiative
		if Die.roll > Die.roll
			[challenger, opponent]
		else
			[opponent, challenger]
		end
	end
end