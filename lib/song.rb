class Song
  attr_reader :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
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
    genre_counted = {}
    @@genres.each do |genre|
      genre_counted[genre] ||= 0
      genre_counted[genre] +=1
    end
    genre_counted
  end

  def self.artist_count
    artist_counted = {}
    @@artists.each do |artist|
      artist_counted[artist] ||= 0
      artist_counted[artist] +=1
    end
    artist_counted
  end
end
