// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract My_Token {
    string public name = "PIYUSH";
    string public symbol = "PYS";
    uint public totalSupply = 0;

    mapping(address => uint) public bal;

    function mint(address add, uint value) public {
        totalSupply += value;
        bal[add] += value;
    }

    function burn(address add, uint value) public {
        if (bal[add] >= value) {
	    totalSupply -= value;
            bal[add] -= value;
        }
    }
}
