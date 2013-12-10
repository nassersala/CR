Feature: Viewing the coderetreats running today
  Scenario: No coderetreats running today
    Given there are no coderetreats running today
    When I go to the running coderetreats display page
    Then I should see there are no coderetreats running

  Scenario: some coderetreats are running today
    Given ther are some coderetreats running today
    When I go to the running coderetreats display page
    Then I should see the running coderetreats grouped by status

