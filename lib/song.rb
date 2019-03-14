 class Song

   #def new(name, artist, genre)
   attr_accessor :name, :artist, :genre
   @@count = 0
   @@artists = []
   @@genres = []


   def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @genre = genre
     @@genres << @genre
     @@artists << @artist
     @@count += 1



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
      g_hash = {}
      @@genres.each do |genre|
        if g_hash.keys.include?(genre)
          g_hash[genre]+=1
        else
          g_hash[genre] = 1
      end
    end
return g_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.each do |artist|
    if artist_hash.keys.include?(artist)
      artist_hash[artist] += 1
    else
      artist_hash[artist] = 1
    end
  end
  artist_hash
end

 end
