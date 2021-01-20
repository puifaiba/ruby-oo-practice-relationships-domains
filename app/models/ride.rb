class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        Ride.all.push(self)
    end

    def self.all
        @@all
    end

    def self.average_distance
        self.all.reduce(0) {|total, ride| total += ride.distance / @@all.count}.round(2)
    end


end