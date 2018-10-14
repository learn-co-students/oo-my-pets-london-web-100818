require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :buy_fish, :pets

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def species
    @species = 'human'
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_cat(name)
    @name = Cat.new(name)
    @pets[:cats] << @name
  end

  def buy_dog(name)
    @name = Dog.new(name)
    @pets[:dogs] << @name
  end

  def buy_fish(name)
    @name = Fish.new(name)
    @pets[:fishes] << @name
  end

  def walk_dogs
    pets[:dogs][0].mood = 'happy'
  end

  def play_with_cats
    pets[:cats][0].mood = 'happy'
  end

  def feed_fish
    pets[:fishes][0].mood = 'happy'
  end

  def sell_pets
    pets.each do |i,k|
      k.each do |o|
        o.mood = 'nervous'
      end
        k.clear
    end
  end

  def list_pets
   "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end
end
