class Recipe
    attr_reader :dessert, :ingredient

    @@recipes = []

    def initialize(dessert, ingredient)
        @dessert = dessert
        @ingredient = ingredient
        Recipe.all.push(self)
    end
    
    def self.all
        @@recipes
    end
    

end