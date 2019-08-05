class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
<<<<<<< HEAD
   self.songs << song
=======
   self.songs << @songs
>>>>>>> f3dd75dfda8ce7e1cae00fe0fd4e8f0387cd21fb
  end
  
  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end

  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
<<<<<<< HEAD
  def print_songs 
		@songs.each do |song|
			puts song.name
		end 
  end

=======
   def print_songs
    self.songs.each {|song| song.name}
  end
>>>>>>> f3dd75dfda8ce7e1cae00fe0fd4e8f0387cd21fb
end
