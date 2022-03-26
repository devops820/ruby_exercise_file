#!/usr/bin/env ruby
require 'csv'
require 'psych'
require 'json'
require 'xml'


header=nil
presidents=[]

CSV.foreach('us_presidents.csv') do |row|
    if header.nil?
        header=row
    else
        presidents << row
    end
end

# print "#{header}\n"
# print "#{presidents}\n"

my_early_presidents=presidents[0..9]

CSV.open("my_early_presidents.csv","w") do |csv|
    csv << header
    my_early_presidents.each do |president|
        csv << president
    end
end

labels=header.map {|item| item.downcase.gsub(/\s/,'_')}
# puts labels
new_array=my_early_presidents.map do |row|
    # print "#{labels.zip(row)}\n"
    # puts labels.zip(row).to_h
end

yaml=File.read('us_presidents.yml')
yaml_data=Psych.load(yaml)

# puts yaml_data.values
# yaml_data.each {|k,v| print "#{v}\n"}
yaml_data.each do |k,v|
    #yaml_data_short=Psych.dump({k=>v[0..9]})
    yaml_data_short={'early_presidents'=>v[0..9]}.to_yaml
    File.write('my_early_presidents.yml',yaml_data_short)
end


# working with json
json=File.read('us_presidents.json')
hash=JSON.parse(json)
# json_data_short=JSON.generate({'us_presidents'=>hash['us_presidents'][0..9]})
json_data_short={'early_presidents'=>hash['us_presidents'][0..9]}.to_json
File.write("my_early_presidents.json",json_data_short)

# puts json_data.

# xml
