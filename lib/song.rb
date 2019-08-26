require 'pry'

class Song 
  attr_accessor :name 
  attr_reader :artist, :genre 
  
  @@all = []
  
  def initialize(name, artist=nil, genre=nil)
    @name = name 
    self.artist= artist if artist == nil 
    self.genre= genre if genre == nil
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    # @@all.clear OR @@all = [] both work too
    all.clear
  end
  
  def save
    self.class.all << self 
  end
  
  def self.create(name) 
    song = new(name)
    song.save
    song 
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self)
    artist.songs << self 
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self if genre.songs.include?(self)
  end
  
  def genre 
    songs.collect do |songs|
    end
  end

end