class Guest
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        Guest.all.push(self)
    end

    def self.all
        @@all
    end

    def listings
        self.trips.map {|guest| guest.listing}
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        self.all.select {|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select {|guest| guest.name == name}
    end

end