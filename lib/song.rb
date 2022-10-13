require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    def initialize(name, artist, genre) 
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

# binding.pry