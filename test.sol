// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0;

contract BmeCoin {
    mapping(address=>uint) balances;
    
    constructor(uint totalSupply) {
        balances[msg.sender] = totalSupply;
    }
    
    function getBalance() public view returns(uint){
        return balances[msg.sender];
    }
    
    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}