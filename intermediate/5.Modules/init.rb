#!/usr/bin/env ruby


require_relative 'modules/nameable'
require_relative 'modules/contactinfo'
require_relative 'classes/person'


person=Person.new
person.first_name="Sai"
person.last_name="Marlakunta"
puts person.full_name