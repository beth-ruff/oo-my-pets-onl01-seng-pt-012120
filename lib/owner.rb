class Owner
  attr_reader :name, :species 
  
  @@owners = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species 
    @@owners << self 
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all 
    @@owners
  end 
  
  def self.count
    @@owners.count 
  end 
  
  def self.reset_all
    @@owners.clear.count
  end 
  
end