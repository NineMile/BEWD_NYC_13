require 'pry'

class Game
  def initialize
    @secret_number_range = 1..10
    @secret_number = rand(@secret_number_range)
    @guesses = 3
    @tries = 0
  end
  def start
    display_welcome_message
    while @tries < @guesses
    @tries += 1
    puts "Enter your guess, from #{@secret_number_range.min} to #{@secret_number_range.max}."
    @guess = gets.strip.to_i
      if @guess < @secret_number
        puts "Too low; guess higher!"
        @highorlow = ["low", "higher"]
        display_guesses_left
      elsif @guess > @secret_number
        puts "Too high; guess lower!"
        @highorlow = ["high", "lower"]
        display_guesses_left
      else
        puts "You won!"
      end
    end
  end

  #Everything inside the "Game" class is part of the private interface!

  def display_welcome_message
    puts "Welcome to the secret number game"
    puts "What's your name?"
    @name = gets.strip
    puts "Welcome, #{@name}. You have #{@guesses} tries to guess the secret number!"
  end
  def display_guesses_left
    puts "You guessed too #{@highorlow[0]}. Guess #{@highorlow[1]}." if @guesses - @tries > 0
  end
end

#This is now the public interface!!

my_secret_number_game = Game.new
my_secret_number_game.start

