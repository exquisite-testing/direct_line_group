@selenium
Feature: Vehicle Insurance Check
  As a user
  I want a website that can check if a vehicles has insurance
  So I can inform the user of the policy start and end date

  Scenario: Checking that the homepage is loaded correctly
    Given I am on the home page
    Then I should see the page title

  Scenario: Searching for an vehicle with insurance
    Given I am on the home page
    When I search for "OV12UYY" vehicle registration
    Then the insurance cover details should return for "OV12UYY"

  Scenario: Searching for an vehicle without any records
    Given I am on the home page
    When I search for "BG57FET" vehicle registration
    Then the insurance cover details should not return for "BG57FET"

  Scenario: Forgetting to add a vehicle registration number
    Given I am on the home page
    When I search for "" vehicle registration
    Then the following error message is displayed "Please enter a valid car registration"

  Scenario: Entering special characters with the vehicle registration number
    Given I am on the home page
    When I search for "@V!2UYY" vehicle registration
    Then the following error message is displayed "Please enter a valid car registration"
