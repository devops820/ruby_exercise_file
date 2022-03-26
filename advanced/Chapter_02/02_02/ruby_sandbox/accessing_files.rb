#!/usr/bin/env ruby
# Two ways to open files for reading/writing

# 1. Instantiate a file object, give it instructions, close it
file = File.new('groceries.txt', 'w')

file.puts "Grocery List"
file.print "+ butter\n"
file.write "+ milk\n"
file << "+ sugar\n"

file.close

# 2. Provide a file with a block of instructions
File.open('groceries.txt', 'r') do |file|

  # ... work with the file
  puts file.read(4) # no of characters 
  puts file.read(4)
  puts file.gets.chomp
  puts file.gets.chomp
  puts file.gets.chomp
  puts file.gets.chomp
  puts file.eof
end

# second argument is the 'mode': r, w, a, r+, w+, a+
file=File.new('groceries.txt','r')
while line=file.gets
  puts line.chomp.reverse
end
file.close

File.open('groceries.txt','r') do |file|
  file.each_line do |line|
    puts line.chomp.reverse
  end
end

