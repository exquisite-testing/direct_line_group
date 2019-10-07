require "rspec"
require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require "capybara/rspec"

include RSpec::Matchers


Capybara.default_max_wait_time = 20

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'https://covercheck.vwfsinsuranceportal.co.uk'
end

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

RSpec.configure do |config|
  config.include Capybara::DSL
end


World(Capybara)
