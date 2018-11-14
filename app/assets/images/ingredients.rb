require "pry"
class Ingredients

attr_reader :name, :calorie

@@all =[]
  #every ingredient has a calorie count***
    def initialize(name, calorie)
    @name = name
    @calorie = calorie
    @@all << self

    end

    def dessert
        Desserts.all.select do |dessert|
          dessert.ingredients == self
        end
    end

    def bakery
      dessert.map do |dessert|
        dessert.bakery
    end

    def self.find_all_by_name(ingredient_name)
      #find all ingredients that have the word chocolate in the string.

    end


    def self.all
      @@all
    end
binding.pry
end
