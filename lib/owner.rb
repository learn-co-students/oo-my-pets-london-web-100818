require'pry'
class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  
  def initialize(name)
    @name = name
    @species = 'human'
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    Owner.all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |instance|
      instance.mood = 'happy'      
    end
  end

  def walk_dogs
    pets[:dogs].each do |instance|
      instance.mood = 'happy'      
    end
  end

  def play_with_cats
    pets[:cats].each do |instance|
      instance.mood = 'happy'      
    end
  end

  def feed_fish
    pets[:fishes].each do |instance|
      instance.mood = 'happy'      
    end
  end

  def sell_pets
    # pets[:dogs].each do |instance|
    #   instance.mood = 'nervous'      
    # end

    # pets[:cats].each do |instance|
    #   instance.mood = 'nervous'      
    # end

    # pets[:fishes].each do |instance|
    #   instance.mood = 'nervous'      
    # end

    pets.each do |k, v|
      v.each do |animal|
        animal.mood = 'nervous'
      end
    end

    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end