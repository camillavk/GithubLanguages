Feature: Guessing a user's favourite language
  In order to be able to guess a user's favourite language
  I want to be able to type in a username and see the language they use most often

  Scenario: Guessing someone's favourite language
    Given I am on the homepage
    When I enter "camillavk"
    And I click "OK"
    Then I should see "camillavk's favourite language is: Ruby"
