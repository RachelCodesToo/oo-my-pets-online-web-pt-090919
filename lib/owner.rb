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
  
  def cat
    Cat.all.select{|cat| cat.owner == self}
  end 
  
  def dog 
    Dog.all.select{|dog| dog.owner == self}
  end 
  
  
end