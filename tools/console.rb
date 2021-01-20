require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

binding.pry

# guest1 = Guest.new("Jay")
# guest2 = Guest.new("Rae")
# guest3 = Guest.new("Emma")

# listing1 = Listing.new("Villa", "Seattle")
# listing2 = Listing.new("Chateau", "Napa Valley")
# listing3 = Listing.new("Penthous", "NYC")
# listing4 = Listing.new("Studio", "NYC")

# trip1 = Trip.new(listing4, guest1)
# trip2 = Trip.new(listing2, guest2)
# trip3 = Trip.new(listing1, guest3)
# trip4 = Trip.new(listing3, guest1)
# trip5 = Trip.new(listing2, guest3)
