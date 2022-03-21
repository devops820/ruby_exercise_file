# iterate: say or do again
# times, upto, downto & each
i=5
i.times do
    puts "Countdown: #{i}"
    i-=1
end
puts "Lift off!"

5.times {puts "Hello!,"}
1.upto(5) {puts "Sai"}
5.downto(1) {puts "Pavan"}
(1..5).each {puts "Marlakunta"}

# iterators, block variables
5.downto(1) do |i|
    puts "Countdown: #{i}"
end

# different types of iterators by class
# Integer: times, upto, downto, step
# Range: each, step
# String; each_line, each_char, each_byte
# Array: each, each_index, each_with_index
# Hash: each, each_key, each_value, each_pair

fruits=['banana','apple','pear']
fruits.each do |fruit|
    puts fruit.capitalize
end