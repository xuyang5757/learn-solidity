// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Mapping{
    mapping(address=>uint256) public myMap;
    function set(address _addr,uint256 _num) public {
        myMap[_addr]=_num;
    }
    function remove(address _addr) public {
        delete myMap[_addr];
    }
    function get(address _addr) public view returns(uint256){
        return myMap[_addr];
    }
}