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
    song_artist_name = filename.split(" - ")[0]
    song = Song.new(song_name)
    #artist_name=(song_artist_name)
  end
  
  def artist_name=(song_artist_name)
    song_artist_name = Artist.find_or_create_by_name(artist_name)
    self.artist = song_artist_name
  end
end