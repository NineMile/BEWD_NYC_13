class Building
  attr_reader :building_name, :building_address, :apartments

  def initialize(building_name, building_address)
    @building_name = building_name
    @building_address = building_address
    @apartments = []
  end

  def view_apartments
    apartments.map do |x|
      puts "Number: #{x.number}"
      puts "  Square feet: #{x.apartment_square_feet}"
      puts "  Bedrooms: #{x.apartment_bedrooms}"
      puts "  Bathrooms: #{x.apartment_bathrooms}"
    end
  end

end
