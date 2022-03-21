#!/usr/bin/env ruby
# global scope
value=10

def output_value
    # local scope
    puts $value
end

# output_value

def set_value
    value=20
end

set_value
puts value