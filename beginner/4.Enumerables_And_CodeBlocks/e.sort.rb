#!/usr/bin/env ruby

# for sorting you must be able to perform comparisons
# <=> spaceship operator

[12,19,1,3,90].sort {|v1,v2| v1<=>v2}
fruits=['banana','apple','pear']
sorted_fruits_by_size=fruits.sort do |fruit1, fruit2|
    # shorter value goes to the left & the longer value goes to the right.
    fruit1.length <=> fruit2.length
end
print "#{sorted_fruits_by_size}\n"

# or equivalent you can use sort_by method
fruits.sort_by {|fruit| fruit.length}

# sorting hashes - returns an array of k,v 
hash={a:4, c:5, b:3}
hash.sort {|p1,p2| p1[0]<=>p2[0]} 