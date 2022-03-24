#!/usr/bin/env ruby

def even_numbers(array)

    unless array.is_a?(Array)
        raise ArgumentError.new("Pass an array BEY!!")
    end

    if array.length == 0
        raise StandardError.new("Too few elements")
    end

    array.find_all {|el| el.to_i % 2 == 0}

end

# even_numbers(2)
# even_numbers([])
puts even_numbers([2,4,6,10,9,2])

class Radio
    def volume=(value)
        if value < 1 || value > 11
            raise "Too Loud!!"
        end
        @volume=value
    end
end

begin
    r=Radio.new
    r.volume=20
rescue RuntimeError => e
    puts e.message
    puts e.class
    puts e.backtrace
end