class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = [] 

  def initialize(title)
    @name = title
    @songs = []
  end

  def add_song(song_obj)
    # if !song_obj.artist
    #   song_obj.artist = self
    # end
    
    song_obj.artist = self unless song_obj.artist
  
    
  end

  def self.all 
    @@all
  end

  def self.destroy_all
    all.clear 
  end

  def save
    self.class.all << self
  end

  def self.create(title)
    artist = self.new(title)
    artist.save
    artist
  end
end