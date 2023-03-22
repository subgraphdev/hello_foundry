// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Counter {
    uint public count;

    function setCount(uint _count) public {
        count = _count;
    }

    // Function to get the current count
    function getCount() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function incCount() public {
        count += 1;
    }

    // Function to decrement count by 1
    function decCount() public {
        // This function will fail if count = 0
        count -= 1;
    }
}
