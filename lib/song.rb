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
  
  def self.new_by_filename(file_name)
    song_name = file_name.split(" - ")[1]
    Song.new(song_name)
  end
end