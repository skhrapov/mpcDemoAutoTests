Feature: Authorization test, mpc demo portal.
  In order i can to make tests
  I
  Should be able to logon

  Background:
    Given user with "adam@radiumone.com" email and "1Password" password

  Scenario: Successful login with correct credentials
    Given I go to portal 
    And I fill in "email" with "adam@radiumone.com"
    And I fill in "password" with "1Password"
    When I click "Log In" button
    Then I should see "Applications"

  Scenario: Unsuccessful login with incorrect credentials
    Given I go to portal 
    And I fill in "email" with "adam@radiumone.com"
    And I fill in "password" with "Password"
    When I click "Log In" button
    Then I should see "Incorrect e-mail address or password."