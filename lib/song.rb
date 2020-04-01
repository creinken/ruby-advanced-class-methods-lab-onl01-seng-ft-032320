class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end
  
  def self.create
    song = self.new
    Song.all << song
    song
  end
  
  def self.new_by_name(song_title)
    song = self.new
    song.name = song_title
    song
  end
  
  def self.create_by_name(song_title)
    song = self.new
    song.name = song_title
    Song.all << song
    song
  end
  
  def self.find_by_name(song_title)
    self.all.find{|song| song.name == song_title}
  end
  
  def self.find_or_create_by_name(song_title)
    if self.find_by_name(song_title)
      self.find_by_name(song_title)
    else
      self.create_by_name(song_title)
    end
  end
  
  def self.alphabetical
    Song.all.sort_by {|song| song.name}
  end
  
  def self.new_from_filename(file_name)
    file_name_array = file_name.split(" - ")
    name = file_name_array[1]
    artist_name = file_name_array[0]
    song = self.new_by_name(name)
    song.artist_name = artist_name
    song
  end
  
  def self.create_from_filename(file_name)
  
  end
  
  def self.destroy_all
    @@all.clear
  end

end
