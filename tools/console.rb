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

# bakery1 = Bakery.new
# bakery2 = Bakery.new

# ingredient1 = Ingredient.new("flour", 100)
# ingredient2 = Ingredient.new("sugar", 500)
# ingredient3 = Ingredient.new("chocolate", 350)
# ingredient4 = Ingredient.new("chocolate mousse", 400)
# ingredient5 = Ingredient.new("butter", 225)

# dessert1 = Dessert.new("Brownie")
# dessert2 = Dessert.new("Chocolate Mousse Cake")
# dessert3 = Dessert.new("Sugar Cookie")

# recipe1 = Recipe.new(dessert1, ingredient1)


passenger1 = Passenger.new("Lenny")
passenger2 = Passenger.new("Bono")
passenger3 = Passenger.new("Ziggy")

driver1 = Driver.new("Comet")
driver2 = Driver.new("Prancer")

ride1 = Ride.new(passenger2, driver1, 12.2)
ride2 = Ride.new(passenger1, driver2, 52.5)
ride3 = Ride.new(passenger3, driver2, 67.1)
ride4 = Ride.new(passenger1, driver1, 53.9)