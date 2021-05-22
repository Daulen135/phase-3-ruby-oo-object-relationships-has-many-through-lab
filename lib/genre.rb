require 'pry'
class Genre
    attr_reader :name,:artist
    @@all =[]

    def initialize (name)
        @name = name
        @@all << self
    end

    def songs
        Song.all.select do |song|
            self == song.genre

        end
    end
    
    def self.all
        @@all
    end

    def artists 
        songs.collect do|song|
            song.artist
    #A new array is returned which has the value returned by the block.
            # songs.collect {|song| song.artist}
        end
        # binding.pry
        
    end

end

