Feature: Calculator
  As a user
  I want to use a calculator to multiply numbers
  So that I don't need to multiply myself

  Scenario:Multiply two numbers -2 & 3
    Given I have a calculator
    When I multiply -2 and 3
    Then the result should be -6

  Scenario: Multiply two numbers 10 & 15
    Given I have a calculator
    When I multiply 10 and 15
    Then the result should be 150