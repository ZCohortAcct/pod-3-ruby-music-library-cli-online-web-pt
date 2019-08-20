class Song
  attr_accessor :name, :artist

  @@all = [] #hv a collection of song instances

  def initialize(title, artist_obj = nil)
    @name = title
    @artist = artist_obj
  end

  # def artist #reader method
  #   @artist
  # end

  #class reader method
  def self.all #class, function to access all instances of the call
    @@all
  end

  def self.destroy_all
    all.clear # || @@all.clear
  end

  def save
    # @@all << self #auto save

    #self is an instance
    # class method, calls the class of the instance

    self.class.all << self
  end

  def self.create(title)
    song = self.new(title)

    song.save # returns an arr of songs, NOT an instance
    #think RETURN VALUE!!! alwasys want to return an instance
    song 
  end
end