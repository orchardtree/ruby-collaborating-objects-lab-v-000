require 'pry'
class MP3Importer 
  attr_accessor :path
  def initialize(path)
    @path = path
  end
  
  def files
    @mp3_files = []
    mp3_paths = Dir.glob(@path + "/*.mp3")
    mp3_paths.each do |mp3_path|
      mp3_file = mp3_path.split(/.+\//)[1]
      @mp3_files << mp3_file
    end
    @mp3_files
  end
  
  def import 
    files.each do |file| 
      song_name = file.split(" - ")
      Song.new(song_name)
    end
  end
    
end