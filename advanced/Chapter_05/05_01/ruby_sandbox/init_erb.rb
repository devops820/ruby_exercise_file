#!/usr/bin/env ruby
require 'erb'

template="This year is <%= Time.now.year %>. "
renderer=ERB.new(template)
puts renderer.result

template=""
# setting a variable in one part of the template
template<< "<% result=2+2 %>"
# and trying to use that variable in another part of the same template
template<< "2 + 2 = <%= result %>"
# puts template
renderer=ERB.new(template)
puts renderer.result

@test='test data'
puts binding
puts eval('@test',binding)

@year=Time.now.year
template="This is the year our baby will born <%= @year %>."
renderer=ERB.new(template)
puts renderer.result(binding)

@result = 2 + 2
template="2 + 2 = <%= @result %>"
renderer=ERB.new(template)
puts renderer.result(binding)


# next up is working with template files

class Customer
    attr_accessor :first_name, :last_name, :email
end

@customer=Customer.new
@customer.first_name="Billy"
@customer.last_name="Bob"
@customer.email="billy.bob@ruby.com"



file_template=File.read('inquiry.txt.erb')
file_renderer=ERB.new(file_template)
# puts file_renderer
# puts @customer.first_name
# puts @customer.last_name
puts file_renderer.result(binding)