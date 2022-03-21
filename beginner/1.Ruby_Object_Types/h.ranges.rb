# ranges are sequential objects and are very much useful when working with loops and iterators
# inclusive range 1..10
# exclusive range 1...100

inclusive_range=1..10
inclusive_range.class

inclusive_range.begin 
inclusive_range.first
inclusive_range.end
inclusive_range.last
# exloding the range into array with asterisk
a=[*inclusive_range]

alpha='a'..'z'
alpha.include?('g')
puts (1..10).class