# bin/save_the_princess.rb
libs = [
	File.expand_path('../../lib',__FILE__),
	File.expand_path('../../app',__FILE__)
]
$LOAD_PATH.unshift *Dir.glob(libs)

require "save_the_princess"

@characters = [
	Barbarian.new(name:"Asterix", strength:4, armor:1, resistance:2),
	Mage.new(name:"Dumbledore", strength:2, armor:3, resistance:2)
]

@battle = Battle.new(challenger: @characters[0], opponent: @characters[1])