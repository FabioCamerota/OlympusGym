require "support/dbcleaner.rb"
require "support/factory_bot.rb"
require_relative "support/controller_macros.rb"
require "devise"
#require 'spec_helper'

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

	config.expect_with :rspec do |c|
		c.syntax = :expect
	end

	config.include Devise::Test::ControllerHelpers, type: :controller
	config.include Devise::Test::IntegrationHelpers, type: :request
	config.include Warden::Test::Helpers
	config.extend ControllerMacros, type: :controller
	#config.extend ControllerMacros, :type => :controller
	config.fixture_path = "#{::Rails.root}/test/fixtures"

	config.render_views
end