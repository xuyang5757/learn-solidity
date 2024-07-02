// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract FunctionModifier{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    modifier onlyOwner(){
        require(msg.sender == owner , "not owner");
    _;
    }
    modifier validAddress(address _addr){
        require(_addr !=address(0),"not valid address");
    _;
    }
    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner){
        owner=_newOwner;
    }

}