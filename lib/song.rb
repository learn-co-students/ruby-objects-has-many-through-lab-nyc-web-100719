class Song 
  @@all = []
  
  attr_reader :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    @@all << self
  end
  
  def self.all 
    return @@all 
  end
end