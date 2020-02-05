class Owner
  # code goes here
  attr_reader :name, :species 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    save
  end 
  
  def save 
    @@all << self
  end 
  
  def self.all 
    return @@all 
  end 
  
  def say_species
    return "I am a #{self.species}."
  end 
  
  def self.count 
    return self.all.count
  end 
  
  def self.reset_all
    self.all.clear
  end 
  
  def cats 
    return Cat.all.select do |cat|
      cat.owner == self
    end
  end 
  
  def dogs 
    return Dog.all.select do |dog|
      dog.owner == self 
    end 
  end 
    
end