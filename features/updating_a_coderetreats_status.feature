Feature: updating the status of a coderetreats

  Scenario: Starting a session
    Given a coderetreat that has not started
    When I start the coderetreat
    And I go to the running coderetreats display page
    Then I should I see that the coderetreat is in session

