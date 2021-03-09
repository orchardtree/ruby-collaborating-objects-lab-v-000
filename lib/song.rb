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
  
  def self.new_by_filename(file)
    artist_name = file.split(" - ")[0]
    song_name = file.split(" - ")[1]
    song = Song.new(song_name)
=begin
    if (song.artist.nil?)
      song.artist = Artist.new(artist_name)
    else
      song.artist.name = artist_name
    end
=end
  end
  
  def artist_name=(artist_name)
    
  end
  
end