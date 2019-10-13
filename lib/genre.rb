class Genre

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    #get genres collection of song
    #iterate through 
    #collet/map the artist that owns each song 
    def artists
        songs.map do |song|
            song.artist
        end
    end 



end 