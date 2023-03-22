// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


import "@openzeppelin/contracts/token/ERC20/IERC20.sol";


contract StakeContract {

    mapping(address => uint256) public s_balances;

    function stake(uint256 _amount,address _token) external returns(bool) {
        s_balances[msg.sender] = s_balances[msg.sender] + _amount;
    }
}
