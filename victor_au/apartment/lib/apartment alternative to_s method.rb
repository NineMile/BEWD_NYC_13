class Apartment
  attr_reader :apartment_number, :apartment_square_feet,
    :apartment_bedrooms, :apartment_bathrooms
  attr_accessor :renter, :rent
  def initialize(apartment_number, apartment_square_feet,
    apartment_bedrooms, apartment_bathrooms)
    @apartment_number = apartment_number
    @apartment_square_feet = apartment_square_feet
    @apartment_bedrooms = apartment_bedrooms
    @apartment_bathrooms = apartment_bathrooms
  end
  def number
    @apartment_number
  end
  def to_s
    "Number: #{apartment_number},
    Square feet: #{apartment_square_feet}, 
    Bedrooms: #{apartment_bedrooms}, 
    Bathrooms: #{apartment_bathrooms}."
  end
#In the building.rb file, change the view_apartments method
# to "puts apartments".
end
