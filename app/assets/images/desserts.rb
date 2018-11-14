require "pry"

class Desserts

  attr_reader :dessert_name, :bakery, :ingredient
@@all = []
  def initialize(bakery,dessert_name, ingredient)
    @dessert_name = dessert_name
    @ingredient = ingredient
    @bakery = bakery
    @@all << self
end

def ingredients
    Ingredients.all.select do |ingred|
      ingred.ingredient == self.ingredient
    end
end

def self.all
  @@all
end
binding.pry

end
