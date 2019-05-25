package io.cucumber.skeleton;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.junit.Before;

public class Stepdefs {
    private Calculator calculator;
    private int total;
    private double doubleTotal;
    private double delta = 0.001;

    @Before
    private void init() {
        this.total = -999;
        this.doubleTotal = 0.00;
    }

    @Given("^I have a calculator$")
    public void initializeCalculator() throws Throwable {
        calculator = new Calculator();
    }

    @When("^I add (-?\\d+) and (-?\\d+)$")
    public void testAdd(int num1, int num2) throws Throwable {
        total = calculator.add(num1, num2);
    }

    @Then("^the result should be (-?\\d+)$")
    public void validateResult(int result) throws Throwable {
        Assert.assertEquals(total, result);
    }

    @When("^I subtract (-?\\d+) and (-?\\d+)$")
    public void testSubtract(int num1, int num2) throws Throwable {
        total = calculator.subtract(num1, num2);
    }

    @When("^I multiply (-?\\d+) and (-?\\d+)$")
    public void testMultiply(int num1, int num2) throws Throwable {
        this.total = calculator.multiply(num1, num2);
    }

    @When("^I divide (-?\\d+) by (-?\\d+)$")
    public void testDivide(int num1, int num2) throws Throwable {
        doubleTotal = calculator.divide(num1, num2);
    }

    @Then("^the double result should be (-?\\d+(?:\\.\\d+)?)$")
    public void validateDoubleResult(double result) {
       Assert.assertEquals(result,  doubleTotal, delta);
    }
}
