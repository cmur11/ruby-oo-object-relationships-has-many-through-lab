
class Artist
    attr_accessor :name 
        
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre) #== self
    end 

    def songs
        #Calls on Song class- chooses all(@@all contains all songs, 
        #  selects will iterate over existing array and 
        #  returns new array with )
        Song.all.select { |song| song.artist == self }
    end

    def genres
        songs.map { |song| song.genre }
    end

end