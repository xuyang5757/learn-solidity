// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract DataLocations{
    uint256[] public arr;
  mapping(uint256 => address) public  map;
    struct MyStruct {
        uint256 foo;
    }
    mapping(uint256 => MyStruct) public  myStructs;

    function f() public {
        // call _f with state variables
        _f(arr, map, myStructs[1]);
        g(arr);
       
        // get a struct from a mapping
        MyStruct storage myStruct = myStructs[1];
        myStruct.foo=666;
     
        MyStruct memory myMemStruct =  myStructs[1];
        myMemStruct.foo=777;
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _map,
        MyStruct storage _myStruct
    ) internal {
        // do something with storage variables
       _arr.push(_myStruct.foo);
       _map[_myStruct.foo]=msg.sender;
       
    }

    // You can return memory variables
    function g(uint256[] memory _arr) public pure returns (uint256[] memory) {
        // do something with memory array
       _arr[1]=999;
       return _arr;
    }

    function h(uint256[] calldata _arr) external   {
        // do something with calldata array
        arr=_arr;
        myStructs[1]=MyStruct(111);
    }
}