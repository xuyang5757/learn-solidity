// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract IfElse{
    function foo(uint256 _x) public pure returns(uint256){
        if(_x==0){
            return 0;
        }else if(10>_x && _x>0){
            return 1;
        }else {
            return 2;
        }
    }
}