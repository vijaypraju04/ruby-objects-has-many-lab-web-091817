require "pry"

class Artist
  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs << new_song
    new_song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
end
end
#   def add_song_by_name(name, genre)
#     song = Song.new(name, genre)
#     @songs << song
#     song.artist = self
#   end
# end
