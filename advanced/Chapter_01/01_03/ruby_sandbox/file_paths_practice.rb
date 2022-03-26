#!/usr/bin/env ruby
puts

# relative
puts __FILE__
puts __dir__

puts File.expand_path(__FILE__)
puts File.expand_path(__dir__)
puts File.dirname(__FILE__)
# puts File.join()