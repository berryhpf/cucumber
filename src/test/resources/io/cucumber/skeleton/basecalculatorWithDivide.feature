Feature: Calculator
  As a user
  I want to use a calculator to divide numbers
  So that I don't need to divide myself

  Scenario:Divide two numbers -2 & 3
    Given I have a calculator
    When I divide -2 by 3
    Then the double result should be -0.666

  Scenario: Divide two numbers 10 & 15
    Given I have a calculator
    When I divide 10 by 15
    Then the double result should be 0.666

  Scenario: Divide two numbers 15 & 10
    Given I have a calculator
    When I divide 15 by 10
    Then the double result should be 1.5