// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    mapping(address => uint256) private balances;

// Depósito de Ether
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

// Saque de Ether
    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Saldo insuficiente");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

// Obter saldo
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
}