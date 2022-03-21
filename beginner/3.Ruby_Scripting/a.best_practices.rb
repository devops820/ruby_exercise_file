#!/usr/bin/env ruby

fruits=['apple','banana','pear']

fruits.each do |fruit|
    puts fruit.capitalize
end

puts "Total Fruit Count: #{fruits.count}"

# input/output

puts "whats your name?"
response=gets.chomp

puts "hello, #{response}"