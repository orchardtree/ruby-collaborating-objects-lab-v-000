require 'pry'
class Song
  @@all = []
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist.name = song_artist
    #binding.pry
  end
end