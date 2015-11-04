require './song.rb'

class List
	attr_reader :playlist
	def initialize
		@playlist = []
		add_song
	end
	def song
		@song = Song.new
	end
	def playlist_names
		names = []
		@playlist.each do |song|
			names << song.name
		end
		puts names
	end
	def add_song
		puts "For your first song, type the name of the song, artist, duration in seconds, and lyrics all separated by a comma. Lyric lines should be indicated by periods."
		puts "------"
		@playlist << song
	end
	
	# def play(song_name)
	# 	`say song_name.lyrics`
	# end
  #change this to recognize familiar instance name
	def p_artist(song_name)
    # @playlist.each do |song|
    # 	if @playlist.include?(song)
      	# puts "#{@playlist[song.artist]}"
      	puts song.artist
	    # end
  	# end
	end
	def shuffle
		@playlist.shuffle!
	end
	# def p_lyrics(song_name)
 #    song = song_name if song_name == song.name
	# 	@playlist[song]
	# 	puts song.lyrics
	# end
	def duration
		dur_total = 0
		@playlist.each do |song|
			dur_total += song.duration
		end
		return dur_total
	end
	def friendly_duration
		songs = []
		dur_total = 0
		@playlist.each do |song|
			dur_total += song.duration
		end
		puts "#{dur_total / 60} minutes and #{dur_total % 60} seconds."
	end
	def choice
		puts "Let us know what you want!"
		choice = gets.chomp.downcase
		if choice == "new"
			add_song
		elsif choice == "playlist"
			playlist_names
		elsif choice == "lyrics" #doesn't work!!???
			puts "Type song name:"
			song_name = gets.chomp
		elsif choice == "artist" #testing
			print "Please type song name:"
			song_name = gets.chomp
		elsif choice == "duration" #doesn't work!!???
			duration
		elsif choice == "friendly" 
			friendly_duration
		elsif choice == "play"
			song_name = gets.chomp
			p_lyrics(song_name)
		elsif choice == "exit"
			exit
		end
	end
end
