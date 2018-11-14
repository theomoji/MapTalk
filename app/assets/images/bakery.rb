require "pry"

class Bakery

attr_reader :bakery_name
@@all = []
  def initialize(bakery_name)
@bakery_name = bakery_name
@@all << self

  end
#return an array
# return ingredients in array
# return all ingredients the bakery uses
    def find_bakery
      Desserts.all.select do |dessert|
          dessert.bakery == self.bakery_name
    end
  end

  def ingredients
    find_bakery.map do |bakery|
    bakery.ingredient
  end
end

def desserts
    find_bakery.map do |bakery|
      bakery.desserts
ends

def self.all
  @@all
end
binding.pry

end


magnolia = Bakery.new("Magnolia Bakery")
babkedby= Bakery.new("Baked by Melissa")

magnolia.find_bakery
