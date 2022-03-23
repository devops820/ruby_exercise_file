#!/usr/bin/env ruby

require_relative 'classes/dice'

puts '-'*26
puts 'Welcome to the Dice Roller'
puts '-'*26

ds=DiceSet.new
puts "\n#{ds.display}\n\n"
puts "Type \'r\' to roll agin, \'q\' to quit"
print "> "
response=gets.chomp


while true
    case 
    when response=='r' 
        ds.roll
        puts "\n#{ds.display}\n\n"
    when response=='q'
        break
    else
        nil
    end
    puts "Type \'r\' to roll agin, \'q\' to quit"
    print "> "
    response=gets.chomp
end

abort("Exiting the Game!")