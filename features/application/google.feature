Feature: Google Search

  Scenario: As a user, I want to search for gherkin so I may learn about cucumbers.
    Given I am on the Google search page
    When I search for gherkin
    Then I should see results related to cucumbers
