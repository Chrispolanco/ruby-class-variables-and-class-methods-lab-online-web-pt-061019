class Song
attr_accessor :name, :artist, :genre

@@count = 0 
@@genres = []
@@artists = []

  def initialize(name, artist, genre)
    @name= name 
    @artist= artist 
    @genre= genre 
    @@count += 1 
    @@genres << genre
    @@artists << artist 
  end
  
  def self.count
    @@count 
  end
  
  def self.genres
    @@genres = @@genres.uniq
  end

  def self.artists
    @@artists = @@artists.uniq 
  end 

  def self.genre_count
     frequencies= Hash.new(0)
    @@genres.each {|genre| frequencies[genre] +=1}
    @@genres.uniq.each{|genre| puts "#{genre} #{frequencies[genre]}"}
  end 

  def self.artist_count
    test = Hash.new(0)
    @@artists.each {|artist| test[artist] +=1}
    @@artists.uniq.each{|artist| puts "#{artist} #{test[artist]}"}
  end 

end 