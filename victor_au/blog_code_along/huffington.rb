require_relative "lib/author.rb"
require_relative "lib/post.rb"

require 'pry'

puts "Hello. Welcome to The Huffington Post!"

puts "We need some of your information. Please enter the following:"

author = Author.new

puts "Please enter your first name."
author.first_name = gets.strip

puts "Please enter your last name."
author.last_name = gets.strip

puts "Please enter your email."
author.email = gets.strip

puts "Thanks for entering your information. Let's add a blog."

post = Post.new

puts "Please enter the title of your post."
post.title = gets.strip

puts "Please enter the body of your post."
post.body = gets.strip

puts "---"

post.author = author

puts "Title: #{post.title}"
puts "By: #{post.author.full_name}, Email: #{post.author.email}"
puts post.body



