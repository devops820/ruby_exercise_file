#!/usr/bin/env ruby

def divide(x,y)
    x/y
# rescuing inside the method
# rescue
#     puts "Cannot divide by zero"
end

# rescuing outside the method

begin 
    puts divide(4,2)
    puts divide(3,0)
rescue
    puts "Cannot divide by zero"
end