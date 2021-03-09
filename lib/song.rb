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
    artist_name = filename.split(" - ")[0]
    song = Song.new(song_name)
    artist_name=(artist_name)
    
  end
  
  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end
end