# lib/die.rb
module Die
	def self.roll(params = {})
		(params[:times] || 1).times.collect do
			rand(params[:sides] || 6) + 1
		end.inject(:+) || 0
	end
end