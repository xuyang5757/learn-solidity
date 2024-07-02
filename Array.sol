// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Array{
    uint256[] public arr;
    uint256[] public arr2=[2,3,4];
    function get(uint256 _i) public view returns (uint256)
    {
        return arr[_i];
    }
    function getArr() public view returns(uint256[] memory){
        return arr;
    }
    function getArr2() public view returns(uint256[] memory){
        return arr2;
    }
    function push(uint256 _num) public {
        arr.push(_num);
    }
    function pop() public {
        arr.pop();
    }
    function remove(uint256 _index) public {
        delete arr[_index];
    }
    function examples() external pure returns(uint256[] memory) {
         uint256[] memory arrMemory=new uint256[](2);
         return arrMemory;
    }
}