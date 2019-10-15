class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = [] 
  
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def species
    @species = "human"
  end 
  
  def say_species
    "I am a human."
  end 
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end 
  
  def self.reset_all
    self.all.clear
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end 
  
  def buy_cat(cat)
    cats << Cat.new(cat, self)
  end 
  
  

    
    
  
  
  
end