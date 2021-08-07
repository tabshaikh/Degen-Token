// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract Degen {
    string constant public name = "Degen";
    string constant public symbol = "DG";
    uint8 constant public decimals = 18;
    uint256 constant public totalSupply = 1_000_000e18;

    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);

    constructor() {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient Balance");
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);

        return true;
    }
}
