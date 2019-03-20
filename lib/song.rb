class Song 
<<<<<<< HEAD
  attr_accessor :genre, :name
  attr_reader :artist
=======
  attr_reader :artist, :name
>>>>>>> 528e6e6ef691455bffd6a12500c5bff6e8b43ba2
  
  def initialize(name)
    @name = name
    @artist = nil
  end
  
<<<<<<< HEAD
  @@all = []
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
    self
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
  def self.new_by_filename(filename)
   artist_name, song_name, genre_name = filename.chomp(".mp3").split(" - ")
   song = self.new(song_name)
   song.artist = Artist.find_or_create_by_name(artist_name)
   song.genre = genre_name
   song.save
  end
  
=======
>>>>>>> 528e6e6ef691455bffd6a12500c5bff6e8b43ba2
end