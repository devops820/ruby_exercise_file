# arrays in ruby
# ordered collection with an integer index.

e_arr=['a','b',100]
puts e_arr

e_arr[5]='c'
puts e_arr
# e_arr
# => ["a", "b", 100, nil, nil, nil, nil, nil, nil, nil, "c"]

# append to array
e_arr << '2'
e_arr << ['a','b']
puts e_arr

puts e_arr[2..8]
puts e_arr[-1,-3]

# methods

array=['a','b',nil,[2,4],32,'c',nil]
puts array.length
puts array.reverse
# permanently reverse the array
puts array.reverse!
# same applies for shuffle
puts array.shuffle
puts array.shuffle!
# for uniq values
puts array.uniq
puts array.uniq!
# for dealing with nil values
puts array.compact
puts array.compact!
# takes the array inside the array and break it apart.
puts array.flatten
puts array.flatten!
# to check if a value exists inside the array or not
puts array.include?(2)
# to remove the values from the array
puts array.delete_at(1)
# or delete a specific element
puts array.delete('c')

# to join [1,2,3,4].join(':')
# to split a string '1,2,3,4'.split(',')

# similarly you have push(2), pop() & shift() /unshift()
puts array.push(2)
puts array.pop()
puts array.shift()
puts array.unshift(1)

# You can add two arrays and subtract two arrays.