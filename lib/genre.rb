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
        all_songs = Song.all
        all_songs.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.collect do |song|
            song.artist
        end
    end
end