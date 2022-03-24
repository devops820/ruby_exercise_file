#!/usr/bin/env ruby

class TooLoudError < StandardError

    attr_reader :volume 

    def initialize(value, msg=nil)
        super(msg||"Too Loud!!")
        @volume=value
    end
end

class Radio
    def volume=(value)
        if value < 1 || value > 11
            raise TooLoudError.new(value)
        end
        @volume=value
    end
end

begin
    r=Radio.new
    r.volume=20
rescue TooLoudError => e
    puts "Volume #{e.volume}: #{e.message}"
end