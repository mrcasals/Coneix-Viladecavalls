Feature: Admin manages locations
  As an admin
  I want to manage locations
  In order to keep the web updated

  Background:
    Given I am logged in as an admin

  Scenario: An admin lists all the locations
    Given a location exists
    When I am on the admin locations list
    Then I should see the location

  Scenario: An admin adds a location
    Given I am on the location creation page
    When I fill in the form with the location data
    Then I should see the location within the locations list

  Scenario: An admin edits a location
    Given a location exists
    And I am on the location edition page
    When I modify the location data
    Then I should see a confirmation message telling me that the data was successfully updated
    And I should see the modifications in the location page

  Scenario: An admin deletes a location
    Given a location exists
    And I am on the admin locations list
    When I delete the location
    Then I should see a confirmation message telling me that the location was successfully deleted
    And I should not see the location within the admin locations list

