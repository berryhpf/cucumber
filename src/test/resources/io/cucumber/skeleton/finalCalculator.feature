Feature: Calculator
  As a user
  I want to use a calculator to add numbers
  I want to use a calculator to subtract numbers
  I want to use a calculator to multiply numbers
  I want to use a calculator to divide numbers
  So that I don't need to add, subtract, multiply or divide myself

  Scenario Outline: Add two numbers <num1> & <num2>
    Given I have a calculator
    When I add <num1> and <num2>
    Then the result should be <total>

    Examples:
      | num1 | num2 | total |
      | -2 | 3 | 1 |
      | 10 | 15 | 25 |
      | 99 | -99 | 0 |
      | -1 | -10 | -11 |

  Scenario Outline: Subtract two numbers <num1> & <num2>
    Given I have a calculator
    When I subtract <num1> and <num2>
    Then the result should be <total>

    Examples:
      | num1 | num2 | total |
      | -2 | 3 | -5 |
      | 10 | 15 | -5 |
      | 99 | -99 | 198 |
      | -1 | -10 | 9 |

  Scenario Outline: Multiply two numbers <num1> & <num2>
    Given I have a calculator
    When I multiply <num1> and <num2>
    Then the result should be <total>

    Examples:
      | num1 | num2 | total |
      | -2 | 3 | -6 |
      | 10 | 15 | 150 |
      | 99 | 2 | 198 |
      | -1 | -10 | 10 |

  Scenario Outline: Divide two numbers <num1> & <num2>
    Given I have a calculator
    When I divide <num1> by <num2>
    Then the double result should be <total>

    Examples:
      | num1 | num2 | total |
      | -2 | 3 | -0.666 |
      | 10 | 15 | 0.666 |
      | 27 | -9 | -3.0 |
      | -4 | -2 | 2.0 |