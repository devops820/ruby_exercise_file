#!/usr/bin/env ruby

require_relative 'classes/animal'

puts Animal.species
pig=Animal.create_a_pig
puts pig.noise
puts pig.color
#puts pig.types # cannot be called from an instance

puts Animal.species
puts Animal.class_attribs
a1=Animal.new
puts Animal.class_attribs
a2=Animal.new
puts Animal.class_attribs

# class attribs
Animal.species=['cat','mouse','moose']
puts Animal.species

