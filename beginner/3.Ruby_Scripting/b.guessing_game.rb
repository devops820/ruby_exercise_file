#!/usr/bin/env ruby
puts "
=================================
|       RUBY GUESSING GAME      |
=================================
"
puts "What is your name?: "
name=gets.chomp

puts "
      Hello, #{name}
      We are going to play a guessing game.
      I will choose a random number between 1 and 10.
      and you have 3 chances to guess it.
      Okay, I have my number
"

random_number=(10*rand()).ceil
print "Guess1: "
guessed_number=gets.chomp.to_i
count=1

while guessed_number != random_number
    puts "Sorry, that wasn't it."
    count+=1
    if count>3
        abort("That was your last guess. My number was #{random_number}. GoodBye!")
    end
    print "Guess#{count}: "
    guessed_number=gets.chomp.to_i
end

puts "\n\nGood Guessing!"
exit 0