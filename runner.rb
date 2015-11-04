require './songlist.rb'
require './song.rb'

puts 'To add a new song please type "New".'
puts "-----"
puts 'To list the entire collection please type "Playlist".'
puts "-----"
puts 'For song lyrics, please type "Lyrics(song name)". For artist info, type "Artist(song name)". For song duration in seconds, type "Duration(song name)". To play song lyrics, please type "Play(song name)".'
puts "-----"
puts 'For playlist duration in minutes and seconds, type "Friendly".'
puts "-----"
puts 'To exit, type "Exit".'
puts "-----"


list = List.new
loop do
  list.choice
end



