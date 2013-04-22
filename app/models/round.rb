# app/models/round.rb
class Battle::Round
	attr_accessor :challenger, :opponent

	# Store the fighters
	def initialize(params = {})
		@challenger = params[:challenger]
		@opponent = params[:opponent]

		self
	end

	def start
		Turn.new(attacker: @challenger, defender: @opponent).start
		if @opponent.current_hp > 0
			Turn.new(attacker: @opponent, defender: @challenger).start
		end
	end
end
