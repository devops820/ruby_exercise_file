#!/usr/bin/env ruby
def divide(x,y)
    x/y

    rescue ZeroDivisionError
        puts "ZeroDivisionError Handled"
    
    rescue TypeError
        puts "TypeError Handled"

    rescue
        puts "Some other StandardError handled"

end

divide(4,0)
divide('d',0)

def divide2(x,y)
    x/y

    rescue ZeroDivisionError
        puts "ZeroDivisionError Handled"
    
    rescue TypeError
        puts "Requires two arguments"

    rescue
        puts "Some other StandardError handled"

end

divide2(4,0)
# divide2(0,1,2)
divide2(0,"3")


begin
    1/0
# Do not do it!
rescue Exception
    puts "Every exception is handled"
    puts "Even those Ruby uses internally to work"
end