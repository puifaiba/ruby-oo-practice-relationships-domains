class Driver
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        Driver.all.push(self)
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select {|ride| ride.driver == self}
    end

    def passengers
        self.rides.map {|ride| ride.passenger}
    end

    def total_distance
        self.rides.sum {|ride| ride.distance}
    end 

    def self.mileage_cap(distance)
        Driver.all.select {|driver| driver.total_distance > distance}
    end


end