#!/usr/bin/env ruby

scores={low: 2, medium: 5, high:10}

scores.each do |k,v|
    puts "#{k.capitalize}: #{v}"
end

# factor is a local variable
factor=2
[1,2,3,4,5].each do |n|
    # n is a block variable, only available inside the block.
    puts n*2
end