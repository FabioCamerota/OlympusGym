require "support/dbcleaner.rb"

#RSpec.configure do |config|
#	config.include Devise::Test::ControllerHelpers, type: :controller 
#	#config.extend ControllerMacros, :type => :controller
#end

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment",__FILE__)
require 'rspec/rails'
require "capybara/rspec"
#include Capybara::DSL

RSpec.configure do |config|
	config.include Devise::Test::ControllerHelpers, type: :controller
	#config.extend ControllerMacros, :type => :controller
	config.fixture_path = "#{::Rails.root}/test/fixtures"
end