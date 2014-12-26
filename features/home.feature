Feature: A ruby clone of YubNub
  In order to use the website
  As a user
  I should be able to visit the home page

  Scenario: The application has a home page
    When I visit the home page
    Then I should see the welcome message

  Scenario: Adding a command
    When I visit the home page
    Then I should be able to add a command

  Scenario: Displaying all commands
    When I visit the home page
    Then I should be able to see all commands
