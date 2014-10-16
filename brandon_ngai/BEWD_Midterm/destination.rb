class Destination

  def initialize(destination)
    @destination = destination
  end

  def display
    info_to_be_displayed = Geocoder.search(@destination)

      puts 'Name: ' + info_to_be_displayed[0].formatted_address.to_s  
      puts 'Geographical coordinates: ' + info_to_be_displayed[0].geometry['location'].to_s
      puts 'Type of entity: ' + info_to_be_displayed[0].types.to_s

    re_parse
  end
    
    def re_parse
      puts 'Want to look up another destination? (Y or N)'
      user_input = gets.strip
        if user_input.downcase == 'y'
          puts 'Type it here and I\'ll give you some info.'
          info_on_destination = Destination.new(gets.strip)
          info_on_destination.display
        elsif user_input.downcase == 'n'
          puts 'Goodbye!'
          exit
        else
          re_parse
        end
    end

end