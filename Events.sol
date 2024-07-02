// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Events{
    event Log(address indexed sender,string msg);  
    event AnotherLog();
    function test() public {
        emit Log(msg.sender, "hello world");
        emit Log(msg.sender, "hello evm");
        emit AnotherLog();
    } 
    
    
}