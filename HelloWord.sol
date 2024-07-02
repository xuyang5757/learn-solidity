// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract HelloWord{
    string stroeMessage;
    function setMsg(string memory message) public {
        stroeMessage=message;
    }
    function getMsg()public view returns(string memory) {
        return stroeMessage;
    }
}