#!/usr/bin/env ruby
# methods of an enumerable - that which can be counted.

# Find methods
# find/detect
# find_all/select
# any?, none?
# all?, one?
# delete_if

puts (1..10).find {|n| n%3==0}
puts (1..10).find_all {|n| n%3==0} # synonym select

fruits=['apple','banana','pear']
puts fruits.find {|fruit| fruit.length>4}

pantry={
    'apple'=>0,
    'banana'=>1,
    'pear'=>3
}

puts pantry.find {|k,v| v==0}

# to check for boolean conditinons
puts (1..10).any? {|n| n%13==0}
puts (1..10).none? {|n| n%13==0}
puts (1..10).all? {|n| n<13}

# all items in the pantry fully stocked
puts pantry.all? {|k,v| v>0}
# to check if there is at least one that matches our condition, we can use one.

numbers=[*1..1000]
puts numbers.delete_if {|n| n>50}
# only even numbers, delete odd
numbers.delete_if {|n| n%2!=0}
# only odd numbers, delete even
numbers.delete_if {|n| n%2==0}