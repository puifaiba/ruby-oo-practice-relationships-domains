class Dessert
    attr_accessor :bakery
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Dessert.all.push(self)
    end

    def self.all
        @@all
    end

end
