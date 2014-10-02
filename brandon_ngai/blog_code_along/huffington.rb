#runner file - knows about all the different code that we're about to write that lives in different spots
#Not modeling any concept, so we won't be defining classes here. Just joining the two other files which house the classes
require_relative 'lib/author' #<----"author" here is referencing the filename "author.rb" in the lib folder
require_relative 'lib/post'

puts 'Hello, welcome to HuffPo'

puts 'We need some of your info'

author = Author.new



puts 'First name?'
author.first_name = gets.strip

puts 'Last name?'
author.last_name = gets.strip

puts 'Email?'
author.email = gets.strip

puts 'Thanks for your info, let\'s add a blog'

post = Post.new

puts 'Enter title of post'
post.title = gets.strip

puts 'Enter body of post'
post.body = gets.strip


post.author = author

puts '---'

puts "Title: #{post.title}"
puts "By #{post.author.full_name}, email: #{post.author.email}"
puts post.body



