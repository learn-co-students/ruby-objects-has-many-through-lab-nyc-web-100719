class Artist

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def songs
        all_songs = Song.all
        all_songs.select do |song|
            song.artist == self
        end
    end

    def genres
        songs.collect do |song|
            song.genre
        end

    end

end