// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    string public message;

    function setMessage(string memory _newMessage) public {
        message = _newMessage;
    }

    function getMeesage() public view returns(string memory) {
        return message;
    }
}
