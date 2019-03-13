class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    count_hash = {}
    @@genres.uniq.each{|genre| count_hash[genre] = @@genres.count(genre)}
    count_hash
  end

  def self.artist_count
    count_hash = {}
    @@artists.uniq.each{|artist| count_hash[artist] = @@artists.count(artist)}
    count_hash
  end
end
