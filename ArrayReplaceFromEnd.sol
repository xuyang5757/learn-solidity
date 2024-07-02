// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract ArrayReplaceFromEnd{
    uint256[] public arr = [0,1,2,3,4,5,6,7,8,9];
    function remove(uint256 _index) public {
        arr[_index]=arr[arr.length-1];
        arr.pop();
    }
}