

class Artist

    attr_accessor :name, :songs

    @@all=[]

    def initialize (name)
        @name=name
        @songs = []
        self.save
               
    end

    def add_song(song)
        @songs<< song
       # binding.pry        
    end

    def save
        @@all<<self
    end

    def self.all
        @@all   
               
    end

    def self.find_or_create_by_name(artist_name)
      @@all.detect {|artist| artist.name= artist_name} || self.new(artist_name) 
      #binding.pry
     end

     def print_songs
        @songs.each {|song| puts song.name}
     end

end
