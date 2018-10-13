class Owner
 # setters and getters
  attr_accessor :pets, :name, :mood
  attr_reader  :species


  #class variables
  @@all = []

#initialize method

def initialize(name, species="human", pets={fishes: [], cats: [], dogs: []})
  @species = species
  @name = name
  @pets = pets
  @@all << self
end

#instance methods

def say_species
  "I am a #{self.species}."
end

def buy_fish(name)
  new_fish = Fish.new(name)
  self.pets[:fishes] << new_fish
end


def buy_cat(name)
  new_cat = Cat.new(name)
  self.pets[:cats] << new_cat
end


def buy_dog(name)
  new_dog = Dog.new(name)
  self.pets[:dogs] << new_dog
end


def walk_dogs
  self.pets[:dogs].map{|dog| dog.mood = "happy"}
end

def play_with_cats
  self.pets[:cats].map{|cat| cat.mood = "happy"}
end

def feed_fish
   self.pets[:fishes].map{|fish| fish.mood = "happy"}
 end


 def sell_pets
  self.pets.each do |animal, name|
  name.map {|pet| pet.mood = "nervous"}
  end
  self.pets.clear
 end


 def list_pets
  "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
 end








#class methods 

def self.all
  @@all
end

def self.count
  self.all.count
end

def self.reset_all
self.all.clear
 end











end