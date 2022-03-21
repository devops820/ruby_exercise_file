x=1
puts x==1
puts x<3
puts x>-50 && x<5
puts x>=100 || x<50

puts x.nil?
puts !x
puts 2.between?(1,4)
puts [1,2,3].empty?
puts [].empty?

hashh = {'a'>=1,'b'>=2}
# does hashh has key 'a'
hashh.has_key?('a')
# does hashh has symbol 'a'
hashh.has_key?(':a')
# checking values
hashh.has_value?(4)
hashh.has_value?(1)

