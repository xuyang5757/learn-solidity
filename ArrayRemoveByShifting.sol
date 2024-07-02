// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract ArrayRemoveByShifting{
    uint256[] public arr = [0,1,2,3,4,5,6,7,8,9];
    function remove(uint256 _index) public {
        require(arr.length>_index,"index out of bound");
        for(uint256 i =_index; i<arr.length-1;i++){
            arr[i]=arr[i+1];
        }
        arr.pop();
    }
}