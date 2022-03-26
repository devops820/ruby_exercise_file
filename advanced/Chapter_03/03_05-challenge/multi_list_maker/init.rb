#!/usr/bin/env ruby

#### List Maker ####
#
# Launch this Ruby file from the command line
# to get started
# 

APP_ROOT = File.expand_path(File.dirname(__FILE__))
# puts Dir.empty?(File.join(APP_ROOT,'lm_lists')) 
# if ! Dir.empty?(File.join(APP_ROOT,'lm_lists'))
#     puts "directory does not exits"
# end
# puts Dir.mkdir(File.join(APP_ROOT,'lm_lists2'))
require_relative 'lib/controller'

controller = ListMaker::Controller.new
controller.launch!