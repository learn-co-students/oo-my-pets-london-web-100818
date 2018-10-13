class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
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

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each { |d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each { |c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each { |f| f.mood = "happy"}
  end

  def sell_pets
    @pets.each {|category, pets|
      pets.each { |pet|
        pet.mood = "nervous"
      }
      pets.clear
    }
  end

  def list_pets
    cats = @pets[:cats].size
    dogs = @pets[:dogs].size
    fish = @pets[:fishes].size
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
