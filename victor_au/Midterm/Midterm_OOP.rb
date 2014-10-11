require 'rest-client'
require 'JSON'
require 'pry'

class Midterm
  def ask_subreddit
    puts "\n"
    puts 'Hi! This program will list the top 25 posts of your chosen subreddit.'
    sleep 0.4
    puts "Please enter which subreddit's posts you would like to see."
    puts "\n"
    puts "Your response:"
    @sub = gets.strip
    puts "\n"
    puts "You chose the subreddit '#{@sub}'!"
    sleep 0.5
    puts "\n"
  end
  def parse_url_response
    url = "http://www.reddit.com/r/#{@sub}.json"
    response = RestClient.get(url)
    @parsed_response = JSON.parse(response)
  end
  def get_post_data
    @posts = @parsed_response["data"]["children"].map do |post|
      title = post["data"]["title"]
      author = post["data"]["author"]
      category = post["data"]["subreddit"]
      upvotes = post["data"]["score"]
      {title: title, author: author, subreddit: category, upvotes: upvotes}
    end
  end
  def ask_if_list_one_by_one
    puts 'Do you want this to list each post one-by-one (as opposed to all at once)?'
    puts 'If so, type "yes".'
    puts "\n"
    puts "Your response:"
    @one_by_one_answer = gets.strip
    puts "\n"
    puts "Okay! Hold on..."
    puts "\n"
  end
  def list_posts
    if @one_by_one_answer == "yes"
      sleep 0.55
      i = 1
      until i == 26
        @posts.map do |post|
          puts "#{i}."
          puts "Title: #{post[:title]}"
          puts "Author: #{post[:author]}"
          puts "Upvotes: #{post[:upvotes]}"
          puts "Subreddit: #{post[:subreddit]}"
          puts "\n"
          sleep 0.55
          i+=1
        end
      end
    else
      sleep 0.8
      i = 1
      until i == 26
        @posts.each do |post|
          puts "#{i}."
          puts "Title: #{post[:title]}"
          puts "Author: #{post[:author]}"
          puts "Upvotes: #{post[:upvotes]}"
          puts "Subreddit: #{post[:subreddit]}"
          puts "\n"
          i+=1
        end
      end
    end
  end
  def start
    ask_subreddit
    ask_if_list_one_by_one
    parse_url_response
    get_post_data
    list_posts
  end
end

midterm = Midterm.new
midterm.start
