pragma solidity ^0.4.24;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Calculator.sol";


contract TestCalculator {

    Calculator calculator = Calculator(DeployedAddresses.Calculator());

    function testAdd() public {
        uint expected = 5;
        uint returned = calculator.add(2, 3);
        Assert.equal(returned, expected, "Fail!");
    }

    function testSub() public {
        uint expected = 1;
        uint returned = calculator.sub(3, 2);
        Assert.equal(returned, expected, "Fail!");
    }

    function testMul() public {
        uint expected = 6;
        uint returned = calculator.mul(3, 2);
        Assert.equal(returned, expected, "Fail!");
    }

    function testDiv() public {
        uint expected = 2;
        uint returned = calculator.div(4, 2);
        Assert.equal(returned, expected, "Fail!");
    }

    function testSubNegative() public {
        uint expected = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
        uint returned = calculator.sub(2, 3);
        Assert.equal(returned, expected, "Fail!");
    }

    function testDivisionTruncated() public {
        uint expected = 1;
        uint returned = calculator.div(3, 2);
        Assert.equal(returned, expected, "Fail");
    }
}