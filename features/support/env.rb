require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require "site_prism/all_there"
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include RSpec::Matchers


World(Page)


Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.linkedin.com/home'
  config.default_max_wait_time = 5
end
