class Song
  @@genres = []
  @@artists = []
  @@artists_count = Hash.new(0)
  @@genres_count = Hash.new(0)
  @@count = 0
  def initialize(song, artist, genre)
    @@count +=1
    @name = song
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
  end

  def new(name, artist, genre)
    Song.new(name,artist,genre)
  end

  def self.genre_count
    @@genres.each {|item| @@genres_count[item] += 1 }
    @@genres_count
  end

  def self.artist_count
    @@artists.each {|item| @@artists_count[item] += 1 }
    @@artists_count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  attr_accessor :name
  attr_accessor :artist
  attr_accessor :genre


end
