// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter();
    }

    function testsetCount() public {
        counter.setCount(15);
        assertEq(counter.count(), 15);
    }

    function testincCount() public {
        counter.setCount(10);
        counter.incCount();
        assertEq(counter.count(),11);
    }

    function testdecCount() public {
        counter.setCount(25);
        counter.decCount();
        assertEq(counter.count(),24);
    }


    function testFaildecCount() public {
        counter.setCount(0);
        counter.decCount();
    }

    
}
