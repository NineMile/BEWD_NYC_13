class Building
  attr_reader :building_name, :building_address, :apartments

  def initialize(building_name, building_address)
    @building_name = building_name
    @building_address = building_address
    @apartments = []
  end

  def view_apartments
    apartments.map do |apartment|
      puts "Number: #{apartment.number}"
      puts "  Square feet: #{apartment.apartment_square_feet}"
      puts "  Bedrooms: #{apartment.apartment_bedrooms}"
      puts "  Bathrooms: #{apartment.apartment_bathrooms}"
    end
  end

end
