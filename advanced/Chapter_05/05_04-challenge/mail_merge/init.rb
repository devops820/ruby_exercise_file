#!/usr/bin/env ruby
require 'csv'
require 'erb'

#### Mail Merge ####
#
# Launch this Ruby file from the command line
# to get started
# 

APP_ROOT = File.expand_path(File.dirname(__FILE__))

# Read a template file containing the text of a letter
letter_template=File.read('letter_template.txt')

header=nil

# Read a CSV file to get an array of people
CSV.foreach("us_presidents.csv") do |row|
    if header.nil?
        header=row
    else
        @letter_number=row[0]
        @first_name=row[2]
        @last_name=row[1]
        @fee=rand(100..400).to_f
        @due_date=row[3]
        @title="The History of "+row[6]
        puts "---------"
        puts "letters/letter_#{@letter_number}.txt\n\n"
        puts ERB.new(letter_template).result(binding)
        puts "\n\n"
        File.write(File.join('letters',"letter_#{@letter_number}.txt"), ERB.new(letter_template).result(binding))
        # print "#{row}\n"
    end
end

# Set instance variables to data for each person

# Use ERB to bind instance variables to the letter template

# Save the results as separate files in a directory (e.g., "letter_01.txt")
