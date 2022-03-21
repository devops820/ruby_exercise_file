#!/usr/bin/env ruby

# merge is only used with hashes
# merge two hashes together
# block provide rules for merging

h1={a:4, c:5, b:3}
h2={a:9, d:1, b:2}

puts h1.merge(h2)
# key in conflict, old value is h1, new value is h2
# gets evaluated only when in conflict
puts h1.merge(h2) {|key,old,new| old}
puts h1.merge(h2) {|key,old,new| new}
puts h1.merge(h2) {|key,old,new| old*new}
puts h1.merge(h2) {|key,old,new| old<new ? old:new}