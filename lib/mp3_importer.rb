<<<<<<< HEAD
class MP3Importer
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).reject{ |f| f == "." || f == ".."}
  end
  
  def import 
    files.each { |f| Song.new_by_filename(f)}
=======
class Mp3Importer
  attr_accessor :artist, :name 
  
  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_from_filename(filename)
    
>>>>>>> 528e6e6ef691455bffd6a12500c5bff6e8b43ba2
  end

end