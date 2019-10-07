require 'rspec'
require 'capybara'
require 'capybara/cucumber'
require "capybara/rspec"
require_relative "../../features/support/env"
require_relative "../../features/support/helpers"

Given /^I am on the home page$/ do
  visit ('/')
end

When(/^I search for "([^"]*)" vehicle registration$/) do |reg|
  $reg = reg
  search.search_box.set reg
  search.find_vehicle.click
end

Then(/^the insurance cover details should( not)? return for "([^"]*)"$/) do |should_not, reg|
  if should_not
    expect(search.vehicle_results.text).to eql "Sorry record not found"
    #Cover details
    expect(search).to_not have_css (".resultDate-bold")
  else
    expect(search.vehicle_results.text).to eql "Result for : #{reg}"
    #Cover start date
    expect(search.cover_details[0].text).to eql "Cover start:  09 FEB 2022 : 16 : 26"
    #Cover end date
    expect(search.cover_details[1].text).to eql "Cover end:    18 FEB 2022 : 23 : 59"
  end
end


Then(/^I should see the page title$/) do
  expect(search).to have_css ("[title='Volkswagen Financial Services']")
end


Then(/^the following error message is displayed "([^"]*)"$/) do |error_msg|
  expect(search.error_message.text).to eql error_msg
end
