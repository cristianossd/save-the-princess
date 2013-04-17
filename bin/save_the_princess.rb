# bin/save_the_princess.rb
libs = [
	File.expand_path('../../lib',__FILE__),
	File.expand_path('../../app',__FILE__)
]
$LOAD_PATH.unshift *Dir.glob(libs)

require "save_the_princess"