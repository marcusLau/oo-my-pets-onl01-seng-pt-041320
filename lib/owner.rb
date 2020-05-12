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
    Cat.all.map do |cat|
      if cat.owner == self 
        owned_cats << cat
      end
    end
    owned_cats
  end
  
  def dogs
    owned_dogs = []
    Dog.all.map do |doge|
      if doge.owner == self
        owned_dogs << doge
      end
    end
    owned_dogs
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat.name, self))
  end
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog.name, self))
end