class Owner
  # code goes here
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:cats => [], :dogs => []}
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats
    # returns an array of all cats who have the same owner
    owned_cats = []
    Cat.all.map do |cat}
      if cat.owner == self 
        owned_cats << cat
      end
    end
  end
  
end