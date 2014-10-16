secret_number = rand(1..10)
guesses = 3
tries = 0

while tries < guesses
  tries += 1
  tries_left = guesses - tries

  puts "Enter your guess:"
  guess = gets.strip.to_i

  if guess == secret_number
    puts "Hey, you won!"
    exit
  elsif guess < secret_number
    low_or_high = 'low'
    higher_or_lower = 'higher'
  elsif guess > secret_number
    low_or_high = 'high'
    higher_or_lower = 'lower'
  end

  if tries < guesses
    puts "Too #{low_or_high}, try something #{higher_or_lower}"
    if tries_left > 1
      puts "You have #{tries_left} tries left"
    else
      puts "You have #{tries_left} try left"
    end
  end

end