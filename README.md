# Direct Line Group Cucumber Test Suite

Creating testing framework for Directline Group


###Introduction

Create a simple project using any open source tools, to test the following:
1. Go to the Volkswagen Financial Services website
2. Search for a vehicle via the registration numbner
3. Verify the vehicle, the cover start and end date


### Project Layout

* features/*.feature : cucumber features
* features/step_definitions generic steps that apply to all features
* features/page_objects/ specific to an individual page element
* features/support/env.rb : configures the driver and the hostname to use

###Prerequisites

* Download Ruby "ruby-2.2.2" from Ruby http://www.ruby-lang.org/en/downloads/
* Ruby Gems http://rubygems.org/
* Bundler: sudo gem install bundler rake

###Configuration

* sudo bundle install

### Running Features

* To run all features: rake
* To run a specific feature e.g. cucumber features/vehicle_search.feature
* To run a specific test within a feature then run the scenario line number e.g. cucumber features/vehicle_search.feature:7
