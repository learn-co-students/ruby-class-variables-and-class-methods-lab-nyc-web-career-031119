class Song
  attr_accessor :name, :artist, :genre
      @@count = 0
      @@artists = []
      @@genres = []

   def initialize(name, artist, genre)
     @name = name
     @artist = artist
     @@artists << @artist
     @genre = genre
     @@genres << @genre
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
    counter = Hash.new(0)
    @@genres.each {|g| counter[g] += 1 }
    counter
  end

  def self.artist_count
    count = Hash.new(0)
    @@artists.each {|g| count[g] += 1 }
    count
   end

end
