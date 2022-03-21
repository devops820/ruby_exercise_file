i=5
loop do
    break if i<=0
    puts "Countdown: #{i}"
    i-=1
end
puts "Lift off!"

i=5
# while
while i>0
    puts "Countdown: #{i}"
    i-=1
end
puts "Lift off!"


i=5
# until
until i==0
    puts "Countdown: #{i}"
    i-=1
end
puts "Lift off!"

cart=['apple','banana','carrot']

until cart.empty?
    first=cart.shift
    puts first.upcase
end