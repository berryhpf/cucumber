Feature: Calculator
  As a user
  I want to use a calculator to subtract numbers
  So that I don't need to subtract myself

  Scenario:Subtract two numbers -2 & 3
    Given I have a calculator
    When I subtract -2 and 3
    Then the result should be -5

  Scenario: Subtract two numbers 10 & 15
    Given I have a calculator
    When I subtract 10 and 15
    Then the result should be -5