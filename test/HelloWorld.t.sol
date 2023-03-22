// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HelloWorld.sol";

contract CounterTest is Test {
    HelloWorld public hello;

    function setUp() public {
        hello = new HelloWorld();
        hello.setMessage("Learning Test");
    }

    function testSetMessage() public {
        hello.setMessage("I love You");
        assertEq(hello.message(), "I love You");
    }

    function testGetMessage() public {
        hello.setMessage("Play");
        assertEq(hello.getMeesage(), hello.message());
    }
}
