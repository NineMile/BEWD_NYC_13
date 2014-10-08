# SECRET NUMBER SOLUTION #

secret_number = rand(1..10)
guesses = 3
tries = 0


  while tries < guesses
    #LOOP BEGINS#
    tries += 1
    #INCREMENTS THE GUESSES.

    puts "ENTER YR GUESS HUMAN:"
    guess = gets.strip.to_i

    if guess == secret_number
      puts "HEY! You won!!"
      exit
    elsif guess < secret_number
      puts "Too low, try something higher"
    else guess > secret_number
      puts "Too high, try something lower"
    end

    if tries < guesses
      puts "You have #{guesses - tries} tries left."
      #PUTS THE INCREMENTAL GUESS BELOW THE GUESS
    end

  end
end