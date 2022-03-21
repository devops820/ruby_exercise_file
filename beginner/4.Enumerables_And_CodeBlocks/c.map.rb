#!/usr/bin/env ruby
# map/collect: execute a code block on each item of enumerable, 
# add the result of the code block to a new array
# number of items IN is equal to number of items OUT

x=[*1..3]
print "#{x}\n"
y=x.map {|n| n+1}
print "#{y}\n"

# use map on a hash, it returns an array.
# MAP ALWAYS RETURNS AN ARRAY
scores={low:2, high:8, avg:6}
adjusted_scores=scores.map do |k,v|
    "#{k.capitalize}: #{v*100}"
end
print "#{adjusted_scores}\n"

fruits=['apple','banana','pear']
y=fruits.map do |fruit|
    # the return value of the statements used here will be captured into y.
    if fruit == 'pear'
        fruit.capitalize
    else
        fruit
    end
end
print "y: #{y}\n"
print "fruits: #{fruits}\n"

# Map Methods (powerful): map!/collect!
# To indicate a powerful or destructive version of a method.
# Works the same way it replaces the array contents itself.

y=fruits.map! do |fruit|
    # the return value of the statements used here will be captured into y.
    if fruit == 'pear'
        fruit.capitalize
    else
        fruit
    end
end
print "y: #{y}\n"
print "fruits: #{fruits}\n"