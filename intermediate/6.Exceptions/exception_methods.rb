#!/usr/bin/env ruby

begin
    1/0

# assign the instance to a local variable
rescue ZeroDivisionError => e
    puts "#{e.class} handled" 
    puts "#{e.message} handled" #msg:- what went wrong
    puts "#{e.backtrace} handled" # an array of strings, which methods are called and at what line the exception occured.

# doing this for standarderror and all of its sub-classes
rescue => e
    puts "#{e.class} handled"
end







