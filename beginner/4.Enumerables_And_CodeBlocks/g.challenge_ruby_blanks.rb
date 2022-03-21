#!/usr/bin/env ruby

puts "-"*15
puts "| Ruby Blanks |"
puts "-"*15
 
blanks=['verb','adjective','adjective','noun']
vowels=['a','e','i','o','u']

answers=blanks.map do |request|
    # ternary operator
    article=vowels.include?(request[0]) ? 'an' : 'a'
    print "Give me #{article} #{request}: "
    response=gets.chomp
end

puts "I want to #{answers[0]} a #{answers[1]} party to my #{answers[2]} nephew #{answers[3]}"