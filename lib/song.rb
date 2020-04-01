class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def initialize
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def self.create
    
    self
  end
  
  def self.new_by_name(song)
    
  end
  
  def self.create_by_name(song)
    
  end
  
  def self.find_by_name(song)
    
  end
  
  def self.find_or_create_by_name(song)
    
  end
  
  def self.alphabetical
    @@all.sort_by {|a,b| a <=> b}
  end
  
  def self.new_from_filename(file_name)
    
  end
  
  def self.create_from_filename(file_name)
  
  end
  
  def self.destroy_all
    @@all.clear
  end

  def save
    self.class.all << self
  end

end
