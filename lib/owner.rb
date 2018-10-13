class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
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
    @pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |f| f.mood = "happy" }
  end

  def sell_pets
    @pets[:dogs].each { |d| d.mood = "nervous" }
    @pets[:cats].each { |c| c.mood = "nervous" }
    @pets[:fishes].each { |f| f.mood = "nervous" }
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dogs_count = @pets[:dogs].count
    cats_count = @pets[:cats].count
    return "I have #{fish_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end

end
