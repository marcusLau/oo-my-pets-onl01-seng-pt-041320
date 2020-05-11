class Owner
  # code goes here
  
  attr_reader :name, species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
  end
  
  def say_species
    puts "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
end