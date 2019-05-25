Feature: Calculator
As a user
I want to use a calculator to subtract numbers
So that I don't need to subtract myself

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