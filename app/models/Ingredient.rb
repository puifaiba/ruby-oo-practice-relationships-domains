class Ingredient
    attr_reader :name, :calorie

    @@all = []

    def initialize(name, calorie)
        @name = name
        @calorie = calorie
        Ingredient.all.push(self)
    end

    def self.all
        @@all
    end

end