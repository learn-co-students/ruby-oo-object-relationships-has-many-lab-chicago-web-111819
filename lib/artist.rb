require_relative 'song'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    (Song.new(name)).artist = self
  end

  def songs
    Song.all.select { |s| s.artist == self }
  end

  def self.song_count
    Song.all.size
  end

  private
    def save
      @@all << self
    end

end