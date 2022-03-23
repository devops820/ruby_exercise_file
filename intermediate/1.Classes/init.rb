#!/usr/bin/env ruby

require_relative 'classes/person'
require_relative 'classes/animal'
require_relative 'classes/radio'
require_relative 'classes/dice'

person1=Person.new
person2=Person.new
puts person1.object_id
puts person2.object_id
puts person1.say_hello
puts person2.say_hello

pig1=Animal1.new
pig1.set_noise
puts pig1.make_noise

pig2=Animal2.new
pig2.set_noise('Oink2!')
puts pig2.get_noise

pig3=Animal3.new
pig3.noise='Oink3!' # calling the noise= method from the Animal class. (Ruby's syntatic-sugar)
puts pig3.noise
# puts pig.noise # no direct access to the instance variables from outside.
# if you need access, then you will have to use reader & writer methods

pig4=Animal4.new
pig4.noise='Oink4!'
puts pig4.noise

dog1=Animal4.new
dog1.noise='Bow,Bow!'
dog1.color='White'
puts dog1.noise
puts dog1.color

v1=Radio1.new
v1.volume=11
puts v1.volume
v1.crank_it_up
puts v1.volume
puts v1.volume_status

v2=Radio2.new
v2.volume=11
puts v2.volume
v2.crank_it_up
puts v2.volume
puts v2.volume_status

p3=Person.new
p3.first_name='Bob'
p3.last_name='Smith'
puts p3.full_name
puts p3.initial_and_last_name
# puts p3.get_initial("Lucy") its a private method

ani1=Animal5.new
puts ani1.noise

ani2=Animal6.new(options={:sound=>'Burrrr!'}) #options={noise:'Burrr!'}
puts ani2.noise