class Bakery

    @@all = []

    def initialize
        Bakery.all.push(self)
    end

    def self.all
        @@all
    end






end