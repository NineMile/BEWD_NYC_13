# Brandon Marshall Ngai's midterm
#
# Program displays the front page of /r/travel, offering inspiration to 
# the user on destinations to find out about. Program prompts user to
# enter in destination, and then returns basic information on destination.


require 'rest-client'
require 'JSON'
require 'geocoder'
require_relative 'destination'

url = 'http://www.reddit.com/r/travel.json'

string_url = RestClient.get(url)

parsed_response = JSON.parse(string_url)

reddit_posts = []

parsed_response['data']['children'].each_with_index do |title, index|
      index_plus = index + 1
      title_of_reddit_post = title['data']['title']
      puts "#{index_plus}. #{title_of_reddit_post}"
      reddit_posts << "#{index_plus}. #{title_of_reddit_post}"
      sleep 0.090
        end

reddit_posts

puts ' '
sleep 0.090
puts 'Interested in a destination that you see in one of these posts? Type it here and I\'ll give you some info.'

info_on_destination = Destination.new(gets.strip)
info_on_destination.display

