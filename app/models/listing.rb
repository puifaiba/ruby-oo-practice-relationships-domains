class Listing
    attr_accessor :city, :name
    @@all = []

    def initialize(name, city)
        @name = name
        @city = city
        Listing.all.push(self)
    end

    def self.all
        @@all
    end

    def guests
        self.trips.map {|listing| listing.guest}
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        self.trips.count
    end

    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        self.all.max_by {|listing| listing.trip_count}
    end


end