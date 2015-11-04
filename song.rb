class Song
	attr_reader :name, :artist, :duration, :lyrics

	def initialize
		song = ['poop', 'poop artist', 125, 'poop is the lyrics']
	# 	4.times do
	# 		print ">"
	# 		x = gets.chomp
	# 		song << x
	# 	end
		@name = song[0]
		@artist = song[1]
		@duration = song[2].to_i
		@lyrics = song[3]
	end
end