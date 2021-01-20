class Passenger
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Passenger.all.push(self)
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.passenger == self}
    end

    def drivers
        self.rides.map {|ride| ride.driver}
    end

    def total_distance
        self.rides.sum {|ride| ride.distance}
    end

    def self.premium_members
        Passenger.all.select {|passenger| passenger.total_distance > 100}
    end

end