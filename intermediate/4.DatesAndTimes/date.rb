# date is not part of standard/core library of ruby
# it needs to be explicitly called

require 'date'

Date.today
Date.new(2022,9,20)

Date.today.to_time

date=Date.today

date.next_year.leap?