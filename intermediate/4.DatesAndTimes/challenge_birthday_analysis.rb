#!/usr/bin/env ruby

require 'date'

puts '-'*15
puts 'Birthday Analysis'
puts '-'*15

DAYS=['sunday','monday','tuesday','wednesday','thursday','friday','saturday']

puts "What year were you born?"
print "> "
year=gets.chomp.to_i

puts "What month you were born?"
print "> "
month=gets.chomp.to_i

puts "What date of the month were you born?"
print "> "
date=gets.chomp.to_i 

date=Date.new(year,month,date)

puts "========================"
puts "You were born on a #{DAYS[date.wday]}"
puts "It was #{date.cweek} week of the year"
puts "It was the #{date.yday} day of the year"
puts date.leap? ? "You were born in a leap year" : "You were not born in a leap year"
