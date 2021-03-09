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
      @mp3_files << mp3_path()
      binding.pry
    end
    @mp3_files
  end
  
  def  
    
end