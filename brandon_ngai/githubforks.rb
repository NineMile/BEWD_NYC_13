require 'rest-client'
require 'json'
require 'pry'

username = 'bewd-student'
password = 'correcthorsebatterystaple'

url = "https://#{username}:#{password}@api.github.com/repos/ga-students/BEWD_NYC_13/forks"

response = RestClient.get(url)
parsed_response = JSON.parse(response)

forks = parsed_response.map do |fork|
  {
    username: fork['owner']['login'],
    avatar_url: fork['owner']['avatar_url'],
    url: fork['owner']['html_url']
  }
end
############## ^^^ THIS is the basic syntax to create a hash and generating content 
##############     for it with a loop. Memorize and understand this
##############
html = '<html>
<head>
  <title>BEWD Forks</title>
</head>
<body>'

forks.each do |fork|
  html << "

<a href='#{fork[:url]}'>
<img src='#{fork[:avatar_url]}' width='200' height='200'>
</a>
<h2>#{fork[:username]}</h2>
<br><br>"

end

html << '</body> 
</html>'

File.write('forks.html', html)

############ ^^ .write method takes in two inputs, what you want the name of your file to me, 
############ ^^  and the content where its store (variable)