#!/usr/bin/env ruby

require_relative 'classes/shiftcipher'
require_relative '../2.ClassAttribsAndMethods/classes/radio'

class SecureRadio < Radio
    # class variable
    @@shift = 3

    protected
    def audio_stream
        ShiftCipher.encode(super,@@shift)
    end
end


radio=SecureRadio.new
puts radio.status
puts radio.play
puts radio.play
puts radio.play