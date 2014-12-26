Feature: Creating commands
  In order to be able to customize my experience
  As a user
  I should be able to create commands


  Scenario: Providing all the required data
    When I want to create a command
    And I fill in the form completely
    Then I should succeed in creating a command

  Scenario: Failing to provide the command name
    When I want to create a command
    But I don't fill in the name field
    Then I should not succeed in creating a command

  Scenario: Failing to provide the command URL
    When I want to create a command
    But I don't fill in the URL field
    Then I should not succeed in creating a command

  Scenario: Failing to provide the command description
    When I want to create a command
    But I don't fill in the description field
    Then I should not succeed in creating a command
