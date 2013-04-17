puts "What the strenght?"
strenght = gets.to_i

puts "What the armor?"
armor = gets.to_i

attack = strenght.times.collect do
	rand(6)+1
end.inject(:+)

defense = armor.times.collect do
	rand(6)+1
end.inject(:+)

damage = attack - defense
if damage > 0 then
	puts "Damage " + damage.to_s
else
	puts "No damage"
end