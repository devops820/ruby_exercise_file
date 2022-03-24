#!/usr/bin/env ruby

require_relative 'classes/todolist'

list=TodoList.new(['dishes','nap','laundry','vacuum'])

print "#{list.items}\n"
print "First: #{list.first}\n"
print "Longest: #{list.find {|n| n.length>6}}\n"
print "Original list: #{list.map {|n| n.capitalize}}\n"

list<<"sweep"
print "Updated list: #{list.items}\n"

puts "Sorted:"
list.sort.each_with_index do |item,i|
    puts "#{i+1}: #{item}"
end
puts