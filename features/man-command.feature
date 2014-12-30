Feature: Displaying the manual page for a command

  Scenario: Running a man command from the homepage
    When I visit the home page
    And I enter a "man man" command
    Then I should be brought to the command's man page

  Scenario: Visiting the man page directly
    When I visit the man page for man
    Then I should see the man page for man

  Scenario: The command does not exist
    When I visit the home page
    And I try to get the man for a non-existing command
    Then I should be brought back to the home page
    And I should see a "Command not found" error

  Scenario: The command is blank
    When I visit the home page
    And I enter a "man" command without any argument
    Then I should be brought back to the home page
    And I should see a "Syntax Error" error
