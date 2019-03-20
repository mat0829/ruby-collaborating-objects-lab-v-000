class Artist 
  attr_accessor :name
  attr_reader :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  @@all = []
  
  def self.all 
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end
  
  def self.find_by_name(name) 
    @@all.find do |artist|
      artist.name == name
    end
  end
  
  def self.create_by_name(name) 
    self.new(name).save
  end
  
  def add_song(song)
<<<<<<< HEAD
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
=======
    @songs << song
>>>>>>> 528e6e6ef691455bffd6a12500c5bff6e8b43ba2
  end

  def save
    @@all << self
    self
  end
  
  def print_songs
    @songs.each {|s| puts s.name }  
  end
  
end