require_relative 'lib/author'
require_relative 'lib/post'

puts 'Hello welcome to the huffington post'

puts 'We need some of your information, please enter the following...'

author = Author.new

puts 'Please enter your first name:'
author.first_name = gets.strip

puts 'Please enter your last name:'
author.last_name = gets.strip

puts 'Please enter your email:'
author.email = gets.strip

puts 'Thanks for entering your info, lets add a blog'

post = Post.new

puts 'Please enter the title of your post'
post.title = gets.strip

puts 'Please enter some thoughts that you might possibly have:'
post.body = gets.strip

post.author = author

puts '--------'

puts "Title #{post.title}"
puts "By #{post.author.full_name}, Email: #{post.author.email}"
puts post.body