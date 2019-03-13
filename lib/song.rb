class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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
    counting_genres = Hash.new(0)
    @@genres.each do |genre|
      counting_genres[genre] += 1
    end
    counting_genres
  end

  def self.artist_count
    counting_artists = Hash.new(0)
    @@artists.each do |artist|
      counting_artists[artist] += 1
    end
    counting_artists
  end

end
