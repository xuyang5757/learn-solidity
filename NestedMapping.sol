// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract NestedMapping{
    mapping(address=>mapping(uint256=>bool)) public nested;
    function set(address _addr,uint256 _num,bool _boo) public {
        nested[_addr][_num]=_boo;

    }
    function get(address _addr,uint256 _num) public view returns(bool){
        return nested[_addr][_num];
    }
    function remove(address _addr,uint256 _num) public {
        delete nested[_addr][_num];
    }
}